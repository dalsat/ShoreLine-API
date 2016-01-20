initialization
initialize

	super initialize.
	
	data := SlData new.
	self initializeServer.	
	self registerRoutes