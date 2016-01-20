routes
registerTestRoutes

	teapot
		GET: '/api/test' -> [ 'ok' ];
		POST: '/api/test' -> [ :req | req contents ];
		GET: '/api/test/message/<message>' -> [ :req | { 'message' -> (req at: #message) } asDictionary ];
		GET: '/api/test/error' -> [ TeaResponse methodNotAllowed ]