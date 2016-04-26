queries
metadataWithID: id

	^ (self store selectWithID: id)
		ifNotNil: [ :trace | SlStackTraceMetadataPresenter withID: id andModel: trace ]
		ifNil: [ SlInvalidID signalWithID: id ]