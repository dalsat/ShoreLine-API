queries
withID: id

	^ (self store selectWithID: id)
		ifNotNil: [ :trace | SlReportPresenter withID: id andModel: trace ]
		ifNil: [ SlInvalidID signalWithID: id ]