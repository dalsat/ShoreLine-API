utility
blockQueryFrom: aDictionary
	
	^ [ :e | aDictionary associations
				inject: true
				into: [ :sum :ee | sum & ((e perform: ee key) = ee value) ] ]