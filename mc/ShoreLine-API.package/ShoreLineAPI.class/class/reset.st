accessing
reset

	self stop.
	Instance := nil.
	SlSettings reload.
	SlStackTraceStore reset