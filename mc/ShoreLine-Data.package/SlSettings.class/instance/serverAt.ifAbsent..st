private
serverAt: key ifAbsent: aBlock

	^ (self sectionAt: #server)
		at: key
		ifAbsent: aBlock