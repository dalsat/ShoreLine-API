routes
registerStackTracesRoutes

	teapot
		GET: '/api/stacktraces' -> [ :req | data summaryFromRequest: req ];
		GET: '/api/stacktraces/id/<id>' -> [ :req |
			data stackTraceMetadataWithID: (req at: #id) ];
		GET: '/api/stacktraces/id/<id>/full' -> [ :req |
			data stackTraceWithID: (req at: #id) ];
		GET: '/api/stacktraces/list' -> [ :req | data stackTracesFromRequest: req ];
"		GET: 'api/stacktraces/author/<user>' -> [ :req | data tracesWithAuthorFromRequest: req ];
		GET: 'api/stacktraces/class/<class>' -> [ :req | data tracesWithClassFromRequest: req ];
		GET: 'api/stacktraces/topclass/<class>' -> [ :req | data tracesWithTopClassFromRequest: req ];
		GET: 'api/stacktraces/method/<method>' -> [ :req | data tracesWithMethodFromRequest: req];
		GET: 'api/stacktraces/topmethod/<method>' -> [ :req | data tracesWithTopMethodFromRequest: req ];
"		
		POST: '/api/stacktraces' -> [ :req | self save: req ];
		
		exception: SlBadFormat -> [ :ex :req | TeaResponse badRequest body: ex messageText; yourself ];
		exception: SlInvalidID -> [ :ex :req | TeaResponse notFound body: ex messageText; yourself ]