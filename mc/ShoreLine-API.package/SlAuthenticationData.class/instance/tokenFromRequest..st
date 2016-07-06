as yet unclassified
tokenFromRequest: aRequest
	| username token |
	
	self beLoginAuthenticated.
	
	username := (aRequest basicAuthentication first).
	token := (self store
		selectTokenForUser: username
		withDomain: 'github') token.
	
	^ {
	#username -> username.
	#token -> token } asDictionary