routes
linksGet: aRequest
	<route: '/id/<id>/links' method: #GET description: ''>
	
	^ self data linksWithID: (aRequest at: #id)