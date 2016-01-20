private
logAt: key ifAbsent: aBlock

	^ (self sectionAt: #log)
		at: key
		ifAbsentPut: aBlock