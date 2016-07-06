instance creation
newNamed: aString

	^ self basicNew initialize
		username: aString;
		yourself