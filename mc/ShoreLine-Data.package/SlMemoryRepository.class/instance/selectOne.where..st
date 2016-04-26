as yet unclassified
selectOne: aClass where: aDictionary
	
	^ objects detect: (self class blockQueryForClass: aClass from: aDictionary)