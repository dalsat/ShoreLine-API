initialization
registerRoutes

	self registerStackTraceRoutes.
	self registerReportRoutes.
	
	self settings debug ifTrue: [ self registerTestRoutes ]