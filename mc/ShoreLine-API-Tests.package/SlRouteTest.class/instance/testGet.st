tests
testGet

	self
		assert: (client get: (self urlFor: '/test'))
		equals: (STON toJsonString: { #message -> 'ok' } asDictionary).
		
	self assert: client response code equals: 200