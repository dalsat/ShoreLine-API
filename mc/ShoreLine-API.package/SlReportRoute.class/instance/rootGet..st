routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>
	
	^ self data fromRequest: aRequest