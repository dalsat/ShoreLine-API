evaluating
asDictionary
	| query |
	
	query := Dictionary new.
	allowedParameters do: [ :key |
		(request at: key asLowercase ifAbsent: nil)
			ifNotNil: [ :value | query
				at: (self class perform: (key, 'Query') asSymbol)
				put: value ] ].
	^ query