as yet unclassified
initializeWith: aDictionary

	newInstance date: (DateAndTime now).
	newInstance author: (self class authorIn: aDictionary).
	newInstance description: (self class descriptionIn: aDictionary)