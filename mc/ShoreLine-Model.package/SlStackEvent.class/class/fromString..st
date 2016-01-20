instance creation
fromString: aString

	^ self basicNew initialize
		rawContents: aString;
		yourself