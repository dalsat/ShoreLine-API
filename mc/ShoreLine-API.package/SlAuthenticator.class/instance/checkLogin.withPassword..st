actions
checkLogin: username withPassword: password
	| response |
	
	response := self requestLogin: username withPassword: password.

	response isSuccess
		ifTrue: [
			self processLoginData: (STON fromString: response contents) for: username.
			^true ].
	^false