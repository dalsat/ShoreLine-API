instance creation
withMetadata: aDictionary
	| newInstance |

	newInstance := self basicNew initialize.
	aDictionary keysAndValuesDo: [ :eachKey :eachValue |
		newInstance perform: (eachKey copyWith: $:) asSymbol with: eachValue ].
	
	^ newInstance