fields
host

	^ self serverAt: #host ifAbsent: [ self class defaultHost ]