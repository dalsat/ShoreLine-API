tokens
newTokenFor: username withData: aDictionary

	aDictionary
		at: 'username' ifAbsentPut: username;
		at: 'domain' ifAbsentPut: self class domain.
	
	^ SlToken newWith: aDictionary