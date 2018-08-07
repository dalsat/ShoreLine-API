routes
registerStackTraceRoutes

	teapot
		GET: '/api/<project>/stacktraces' -> [ :req | self stacktraces summaryFromRequest: req ];
		GET: '/api/<project>/stacktraces/id/<id>' -> [ :req |
			self stacktraces metadataWithID: (req at: #id) ];
		GET: '/api/<project>/stacktraces/id/<id>/full' -> [ :req |
			self stacktraces withID: (req at: #id) ];
		GET: '/api/<project>/stacktraces/list' -> [ :req | self stacktraces fromRequest: req ];
"		GET: 'api/stacktraces/author/<user>' -> [ :req | data tracesWithAuthorFromRequest: req ];
		GET: 'api/stacktraces/class/<class>' -> [ :req | data tracesWithClassFromRequest: req ];
		GET: 'api/stacktraces/topclass/<class>' -> [ :req | data tracesWithTopClassFromRequest: req ];
		GET: 'api/stacktraces/method/<method>' -> [ :req | data tracesWithMethodFromRequest: req];
		GET: 'api/stacktraces/topmethod/<method>' -> [ :req | data tracesWithTopMethodFromRequest: req ];
"		
		"defaults to 'pharo'"
		POST: '/api/stacktraces' -> [ :req |
			self stacktraces save: req.
			TeaResponse created ];

		POST: '/api/<project>/stacktraces' -> [ :req |
			self stacktraces save: req.
			TeaResponse created ];
		
		exception: SlBadFormat -> [ :ex :req | TeaResponse badRequest body: ex messageText; yourself ];
		exception: SlInvalidID -> [ :ex :req | TeaResponse notFound body: ex messageText; yourself ]