tests
testMessage
	| message |
	
	message := UUID new asString.
	self
		assert: (client get: (self urlFor: 'test/message/'), message)
		equals: (STON toJsonString: { #message -> message } asDictionary).
	
	self assert: client response code equals: 200