fields
port

	^ self serverAt: #port ifAbsent: [ self class defaultPort ]