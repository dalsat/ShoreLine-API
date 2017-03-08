tests
testPost

	self
		assert: (client post: (self urlFor: 'test') contents: '')
		equals: (STON toJsonString: { #message -> 'ok' } asDictionary).
	
	self assert: client response code equals: 201