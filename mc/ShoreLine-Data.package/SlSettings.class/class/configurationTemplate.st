configuration
configurationTemplate

	^ {
		#server -> {
			#host -> self defaultHost.
			#port -> self defaultPort.
			#debug -> self defaultDebug } asDictionary.
		#log -> {
			#logfile -> self defaultLogFile.
			#loglevel -> self defaultLogLevel } asDictionary.
		#db -> {
			#database -> self defaultDatabase.
			#username -> ''.
			#password -> '' } asDictionary
	} asDictionary
