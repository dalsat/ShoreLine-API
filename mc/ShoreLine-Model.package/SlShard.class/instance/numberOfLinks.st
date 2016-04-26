accessing
numberOfLinks

	^ links
		ifNil: 0
		ifNotNil: [ self links size ]