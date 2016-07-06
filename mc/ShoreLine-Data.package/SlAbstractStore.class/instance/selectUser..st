users
selectUser: login

	^ self store selectOne: SlUser where: [ :eachUser | eachUser username = login ]