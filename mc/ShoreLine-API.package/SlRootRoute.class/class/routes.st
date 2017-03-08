accessing
routes

	^ (Pragma allNamed: #route:method:description: in: self)
			collect: [ :eachPragma | self routeForPragma: eachPragma ]