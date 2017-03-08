as yet unclassified
testNotFound

	client get: (self urlFor: '/test/doesNotExist')	.
	self assert: client response code equals: 404