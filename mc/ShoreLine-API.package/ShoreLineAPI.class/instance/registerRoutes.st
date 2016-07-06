initialization
registerRoutes

	self registerAuthenticationRoutes.
	self registerStackTraceRoutes.
	self registerReportRoutes.
	
	self settings debug ifTrue: [ self registerTestRoutes ]