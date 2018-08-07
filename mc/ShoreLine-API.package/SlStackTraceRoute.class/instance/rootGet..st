routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>
	
	self validateProjectFromRequest: aRequest.
	^ self data fromRequest: aRequest