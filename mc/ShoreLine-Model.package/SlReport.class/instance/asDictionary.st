converting
asDictionary
	| newDictionary |
	
	newDictionary := (self metadata associations collect: [ :each | each key -> each value asString ]) asDictionary.
	
	newDictionary at: 'url' put: self id.
	
	^ newDictionary