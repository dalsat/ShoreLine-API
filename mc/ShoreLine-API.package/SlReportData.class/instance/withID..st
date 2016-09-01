queries
withID: id

	^ (self store selectWithID: id)
		ifNotNil: [ :report | SlReportPresenter withID: id andModel: report ]
		ifNil: [ SlInvalidID signalWithID: id ]