routes
fullGet: aRequest
	<route: '/api/reports/id/<id>/full' method: #GET description: ''>
	
	^ self data withID: (aRequest at: #id)