routes
testPost: aRequest
	<route: '/' method: #POST description: ''>
	
	^ TeaResponse created
		body: { #message -> 'ok' } asDictionary