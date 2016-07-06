public
authenticateRequest: request do: block
	^ [ block value ]	
	on: SlAuthenticateException
	do: [ :e |
		(e requiresLogin
			ifTrue: [ self isRequestLoginAuthenticated: request ]
			ifFalse: [ self isRequestAuthenticated: request ])
		ifTrue: [ e resume ]
		ifFalse: [ ^ ZnResponse unauthorized: self authHeader ] ]