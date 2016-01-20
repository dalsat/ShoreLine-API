fields
debug

	^ self serverAt: #debug ifAbsent: [ self class defaultDebug ]