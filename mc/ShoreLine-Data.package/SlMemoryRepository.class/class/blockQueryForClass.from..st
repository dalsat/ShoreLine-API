utility
blockQueryForClass: aClass from: aDictionary
	
	^ [ :e | (e isKindOf: aClass)
		and: ((self blockQueryFrom: aDictionary) value: e) ]