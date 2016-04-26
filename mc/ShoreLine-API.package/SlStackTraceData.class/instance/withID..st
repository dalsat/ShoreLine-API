queries
withID: id

	^ (self store selectWithID: id)
		ifNotNil: [ :trace | SlStackTracePresenter withID: id andModel: trace ]
		ifNil: [ SlInvalidID signalWithID: id ]