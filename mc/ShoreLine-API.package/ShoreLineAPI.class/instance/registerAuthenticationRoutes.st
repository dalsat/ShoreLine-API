routes
registerAuthenticationRoutes

	teapot
		GET: '/api/auth/test' -> [ :req | self authentication test ];
		GET: '/api/auth/data' -> [ :req | self authentication data ];
		GET: '/api/auth/token' -> [ :req | self authentication tokenFromRequest: req ]