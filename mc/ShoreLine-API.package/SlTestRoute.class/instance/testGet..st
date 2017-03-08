routes
testGet: aRequest
	<route: '/' method: #GET description: ''>

	^ { #message -> 'ok' } asDictionary