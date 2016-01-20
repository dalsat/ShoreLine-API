fields
logLevel

	^ self logAt: #logLevel ifAbsent: [ self class defaultLogLevel ]