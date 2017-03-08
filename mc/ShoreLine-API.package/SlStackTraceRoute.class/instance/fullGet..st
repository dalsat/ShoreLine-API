routes
fullGet: aRequest
	<route: '/id/<id>/full' method: #GET description: ''>
	
	^ self data withID: (aRequest at: #id)