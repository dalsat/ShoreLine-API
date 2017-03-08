routes
withClassGet: aRequest
	<route: '/api/reports/class/<class>' method: #GET description: ''>
	
	^ self data withClass: (aRequest at: #class)