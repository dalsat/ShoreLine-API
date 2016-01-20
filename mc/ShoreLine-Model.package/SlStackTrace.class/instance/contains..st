testing
contains: aString

	^ stacktrace anySatisfy: [ :e | e rawContents = aString ]