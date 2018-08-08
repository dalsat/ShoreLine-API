#!/bin/bash

# This script is inspired by st-exec.sh from http://stfx.eu/pharo-server/
# originally written by Sven Van Caekenberghe

function usage() {
    cat <<END
Usage: $0 <command>
    manage a Smalltalk server.
    You *must* provide install.st and start.st files right next to the image
    file.
    start and stop command takes an optional pid file. By the default, the
    pid file will be '${script_home}/pharo.pid'.

Commands:
    get      download the stable pharo image.
    get-vm   download the stable pharo vm.
    build    run install.sh on the image and then quit.
    clean    delete the Pharo image and the related files
    start    run the image with start.st in background.
    stop     stop the server.
    deploy   deploy to the server using the `deploy.yml` ansible recipe
    pid      print the process id
END
    exit 1
}

# Setup vars
VERSION=${VERSION:-61}
VM_PATH=${VM_PATH:-vm}
PHARO_URL=${PHARO_URL:-'https://get.pharo.org/64'}

script_home=$(dirname $0)
script_home=$(cd $script_home && pwd)

command=$1
image="Pharo.image"
pid_file=${2:-"$script_home/pharo.pid"}

# echo $pid_file

# if [ -d $VM_PATH ]; then
#     vm=${script_home}/$VM_PATH/pharo-ui
# elif [[ "$OSTYPE" == "linux-gnu" ]]; then
#     vm=pharo-vm-nox
# elif [[ "$OSTYPE" == "darwin"* ]]; then
#     vm=/Applications/Pharo.app/Contents/MacOS/Pharo
# fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    vm="${script_home}/$VM_PATH/pharo -headless"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    vm="${script_home}/$VM_PATH/pharo-ui"
else
    echo 'unsupported system'
    exit
fi

# echo Working directory $script_home

function get() {
    curl ${PHARO_URL}/${VERSION} | bash
}

function get-vm() {
    rm -rf vm
    mkdir vm
    cd vm
    curl ${PHARO_URL}/vm${VERSION} | bash
}

function deploy() {
    ansible-playbook -i ansible/hosts.ini ansible/deploy.yml
}

function build() {
    echo $vm $image build.st
    $vm $image build.st
}

function clean() {
    read -p "Delete the current Pharo environment? " -n 1 -r
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -fr Pharo.image PharoDebug.log Pharo.changes pharo.pid #play-cache package-cache play-stash
    fi
}

function start() {
    echo Starting $script in background
    if [ -e "$pid_file" ]; then
        rm -f $pid_file
    fi
    echo $pid_file
    echo $vm $image start.st
    nohup $vm $image start.st 2>&1 >/dev/null &
    echo $! >$pid_file
}

function stop() {
    echo Stopping $pid_file
    if [ -e "$pid_file" ]; then
        pid=`cat $pid_file`
        echo Killing $pid
        kill $pid
        rm -f $pid_file
    else
        echo Pid file not found: $pid_file
        echo Searching in process list for $script
        pids=`ps ax | grep $script | grep -v grep | grep -v $0 | awk '{print $1}'`
        if [ -z "$pids" ]; then
                echo No pids found!
        else
            for p in $pids; do
                if [ $p != "$pid" ]; then
                            echo Killing $p
                            kill $p
                fi
            done
        fi
    fi
}

function printpid() {
    if [ -e $pid_file ]; then
        cat $pid_file
    else
        echo Pid file not found: $pid_file
        echo Searching in process list for $script
        pids=`ps ax | grep $script | grep -v grep | grep -v $0 | awk '{print $1}'`
        if [ -z "$pids" ]; then
                echo No pids found!
        else
            echo $pids
        fi
    fi
}

case $command in
    get)
        get
        ;;
    get-vm)
        get-vm
        ;;
    build)
        build
        ;;
    clean)
        clean
        ;;
    start)
        start
        ;;
    stop)
        stop
        ;;
    deploy)
        deploy
        ;;
    pid)
        printpid
        ;;
    *)
        usage
        ;;
esac
