initialization
initializeMetadataWith: aDictionary

	newInstance date: (DateAndTime now).
	newInstance status: 'unconfirmed'.
	
	newInstance author: (self class authorIn: aDictionary).
	newInstance summary: (self class summaryIn: aDictionary)