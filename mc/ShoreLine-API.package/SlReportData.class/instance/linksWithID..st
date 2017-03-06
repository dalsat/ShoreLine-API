queries
linksWithID: id
	
	self notImplemented.
	^ (self store selectWithID: id)
		ifNotNil: [ :report | SlListPresenter withModel: report links "SlReportPresenter withID: id andModel: report" ]
		ifNil: [ SlInvalidID signalWithID: id ]