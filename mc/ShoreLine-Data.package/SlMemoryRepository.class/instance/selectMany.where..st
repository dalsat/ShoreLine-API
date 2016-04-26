as yet unclassified
selectMany: aClass where: aDictionary
	
	^ objects select: [ :e | (e isKindOf: aClass) and: [
			aDictionary associations
				inject: true
				into: [ :sum :ee | sum & ((e perform: ee key) = ee value) ] ] ]