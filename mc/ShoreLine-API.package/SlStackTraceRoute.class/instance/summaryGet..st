routes
summaryGet: aRequest
	<route: '/summary' method: #GET description: ''>
	
	self validateProjectFromRequest: aRequest.
	self data summaryFromRequest: aRequest