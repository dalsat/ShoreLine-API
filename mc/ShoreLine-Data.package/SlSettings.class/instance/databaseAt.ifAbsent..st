private
databaseAt: key ifAbsent: aBlock

	^ (self sectionAt: #db)
		at: key
		ifAbsentPut: aBlock