testing
isRequestAuthenticated: request

	(self isRequestTokenAuthenticated: request) ifTrue: [ ^true ].
	(self isRequestLoginAuthenticated: request) ifTrue: [ ^true ].

	^ false