error handling
badRequest: aString

	^ TeaResponse badRequest
		body: aString;
		yourself