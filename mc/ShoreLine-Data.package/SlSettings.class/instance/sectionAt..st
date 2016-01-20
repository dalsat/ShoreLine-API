private
sectionAt: key

	^ settings
		at: key
		ifAbsentPut: Dictionary new