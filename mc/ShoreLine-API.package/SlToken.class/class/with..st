as yet unclassified
with: aDictionary

	^ self basicNew initialize
		user: (SlUser named: (aDictionary at: #username));
		token: (aDictionary at: #token);
		domain: (aDictionary at: #domain);
		lastUsed: DateAndTime now;
		yourself