testing
canRead: aDictionary

	^ (aDictionary at: #type ifAbsent: [ SlStackTraceDataAdapter type ]) == self type