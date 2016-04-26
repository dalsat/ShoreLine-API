accessing
idOf: anObject

	^ objects indexOf: anObject ifAbsent: [ self error: 'object not found' ]