routes
metadataGet: aRequest
	<route: '/api/reports/id/<id>' method: #GET description: ''>
	
	^ self data metadataWithID: (aRequest at: #id)