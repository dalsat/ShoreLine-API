query
selectWithID: id

	^ self selectOneWhere:
			{ '_id' -> (OID value: id asInteger) } asDictionary