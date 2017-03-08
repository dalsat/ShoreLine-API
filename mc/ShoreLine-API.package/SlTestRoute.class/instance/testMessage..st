routes
testMessage: aRequest
	<route: '/message/<message>' method: #GET description: ''>
	
	^ { 'message' -> (aRequest at: #message) } asDictionary