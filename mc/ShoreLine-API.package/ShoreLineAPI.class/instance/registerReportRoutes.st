routes
registerReportRoutes

	teapot
		GET: '/api/reports' -> [ :req | self reports summaryFromRequest: req ];
		GET: '/api/reports/id/<id>' -> [ :req |
			self reports metadataWithID: (req at: #id) ];		
		GET: '/api/reports/id/<id>/full' -> [ :req |
			self reports withID: (req at: #id) ];
		GET: '/api/reports/id/<id>/links' -> [ :req |
			self reports linksWithID: (req at: #id) ];
		GET: '/api/reports/list' -> [ :req | self reports fromRequest: req ];
		GET: '/api/reports/class/<class>' -> [ :req | self reports withClass: req ];

		POST: '/api/reports' -> [ :req |
			self reports save: req.
			TeaResponse created ];
		POST: '/api/reports/id/<id>/links' -> [ :req | self reports newCommentFromRequest: req ]