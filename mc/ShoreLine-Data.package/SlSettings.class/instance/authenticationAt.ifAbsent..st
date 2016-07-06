private
authenticationAt: key ifAbsent: aBlock

	^ (self sectionAt: #authentication)
		at: key
		ifAbsentPut: aBlock