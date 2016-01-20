testing
includesClassNamed: aString

	^ stacktrace anySatisfy: [ :e | e targetClass = aString ]