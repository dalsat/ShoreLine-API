routes
summaryGet: aRequest
	<route: '/' method: #GET description: ''>
	
	^ self data summaryFromRequest: aRequest