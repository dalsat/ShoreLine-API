instance creation
newStackTraceFrom: aDictionary
	| newTrace |

	newTrace := SlStackTrace new.
	
	newTrace
		serializeStacktrace: (aDictionary at: #payload ifAbsent: nil);
		date: DateAndTime now asUTC.
	
	self stackTraceFields do: [ :eachField |
		newTrace
			perform: eachField
			with: (aDictionary at: eachField ifAbsent: nil) ].
	
	^ newTrace