routes
linksGet: aRequest
	<route: '/api/reports/id/<id>/links' method: #GET description: ''>
	
	^ self data linksWithID: (aRequest at: #id)