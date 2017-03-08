routes
summaryGet: aRequest
	<route: '/summary' method: #GET description: ''>
	
	^ self data summaryFromRequest: aRequest