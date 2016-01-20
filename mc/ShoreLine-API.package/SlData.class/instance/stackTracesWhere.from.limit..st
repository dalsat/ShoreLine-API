queries
stackTracesWhere: aBlockOrDictionary from: offset limit: limit

	^ (self store
		selectWhere: aBlockOrDictionary
		order: { #date -> VOOrder descending } asDictionary
		limit: limit
		offset: offset)
			collect: [ :e |
				SlStackTraceMetadataPresenter
					withID: (self store idOf: e) andModel: e ]