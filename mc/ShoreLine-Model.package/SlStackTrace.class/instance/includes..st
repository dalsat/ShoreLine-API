testing
includes: aSlStackTraceOrString
	| event |
	
	(aSlStackTraceOrString isKindOf: SlStackTrace)
		ifTrue: [ event := aSlStackTraceOrString ]
		ifFalse: [ event := SlStackEvent new rawContents: aSlStackTraceOrString; yourself ].
	^ stacktrace anySatisfy: [ :e | e = event ]