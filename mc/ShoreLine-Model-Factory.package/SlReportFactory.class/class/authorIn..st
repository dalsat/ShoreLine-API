extraction
authorIn: aDictionary

	^ (aDictionary at: #payloads) at: #author ifAbsent: 'anonymous'