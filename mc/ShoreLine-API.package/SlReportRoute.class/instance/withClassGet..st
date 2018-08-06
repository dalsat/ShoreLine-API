routes
withClassGet: aRequest
	<route: '/class/<class>' method: #GET description: ''>
	
	^ self data withClass: (aRequest at: #class)