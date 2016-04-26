routes
registerReportRoutes

	teapot
		GET: '/api/reports' -> [ :req | self reports summaryFromRequest: req ];
		GET: '/api/reports/id/<id>' -> [ :req |
			self reports metadataWithID: (req at: #id) ];		
		GET: '/api/reports/id/<id>/full' -> [ :req |
			self reports withID: (req at: #id) ];
		GET: '/api/reports/list' -> [ :req | self reports fromRequest: req ];

		POST: '/api/reports' -> [ :req |
			self reports save: req.
			TeaResponse created ]