tests
testError
	
	client get: (self urlFor: 'test/error').
	self assert: client response code equals: 405