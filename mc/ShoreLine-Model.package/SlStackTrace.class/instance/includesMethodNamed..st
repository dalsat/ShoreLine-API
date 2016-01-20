testing
includesMethodNamed: aString

	^ stacktrace anySatisfy: [ :e | e targetMethod = aString ]