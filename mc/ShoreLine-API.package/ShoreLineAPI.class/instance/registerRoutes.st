initialization
registerRoutes

	self registerStackTracesRoutes.
	
	self settings debug ifTrue: [ self registerTestRoutes ]