instance creation
reifyFrom: aDictionary andRequest: aRequest
	| newTrace |

	newTrace := SlStackTrace new.
	
	self stackTraceMap do: [ :eachField |
		| value |
		
		value := eachField value isBlock
			ifTrue: [ eachField value cull: aDictionary cull: aRequest ]
			ifFalse: [ aDictionary at: eachField value ifAbsent: nil ].
	
		newTrace
			perform: eachField key asMutator
			with: value ].
	
	^ newTrace