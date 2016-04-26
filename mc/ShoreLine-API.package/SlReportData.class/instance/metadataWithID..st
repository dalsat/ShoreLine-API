queries
metadataWithID: id

	^ (self store selectWithID: id)
		ifNotNil: [ :trace | SlReportMetadataPresenter withID: id andModel: trace ]
		ifNil: [ SlInvalidID signalWithID: id ]