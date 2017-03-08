routes
stacktraceMetadataGet: aRequest
	<route: '/id/<id>' method: #GET description: ''>
	
	^ self data metadataWithID: (aRequest at: #id)