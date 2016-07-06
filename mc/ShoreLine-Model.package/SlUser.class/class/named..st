instance creation
named: aString

	^ (self loadNamed: aString) ifNil: [ self newNamed: aString ]