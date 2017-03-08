routes
tokenGet: aRequest
	<route: '/token' method: #GET description: ''>
	
	^ self data tokenFromRequest: aRequest