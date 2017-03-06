as yet unclassified
initializeWith: aDictionary

	newInstance date: (DateAndTime now).
	newInstance author: (self class authorIn: aDictionary).
	newInstance contents: (self class descriptionIn: aDictionary)