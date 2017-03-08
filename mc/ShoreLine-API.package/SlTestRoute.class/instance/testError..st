routes
testError: aRequest
	<route: '/error' method: #GET description: ''>
	
	^ TeaResponse methodNotAllowed
	body: { #message -> 'not allowed' } asDictionary;
	yourself