as yet unclassified
initializeWith: aDictionary

	newInstance
		date: (self class dateIn: aDictionary);
		serializeStacktrace: (self class stackTraceIn: aDictionary);
		author: (self class authorIn: aDictionary)