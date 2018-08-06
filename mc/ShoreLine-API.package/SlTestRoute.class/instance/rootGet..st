routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>

	^ { #message -> 'ok' } asDictionary