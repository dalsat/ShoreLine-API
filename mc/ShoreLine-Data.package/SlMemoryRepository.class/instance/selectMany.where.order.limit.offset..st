persistence
selectMany: aClass where: aSlQuery order: aCollection limit: limit offset: offset 
	| start stop list |
	
	list := (self selectMany: aClass where: aSlQuery asMongoQuery) asOrderedCollection.
	list ifEmpty: [ ^list ].
	start := offset + 1 min: list size.
	stop := (offset + limit) min: list size.
	^ list copyFrom: start to: stop