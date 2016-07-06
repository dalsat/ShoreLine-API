actions
isRequestTokenAuthenticated: request
	| tokenLine |
	
	tokenLine := request headers at: #Authorization ifAbsent: [ ^false ].
	
	(tokenLine beginsWith: 'token ') ifFalse: [ ^false ].
	
	^ self checkToken: (tokenLine allButFirst: 6)