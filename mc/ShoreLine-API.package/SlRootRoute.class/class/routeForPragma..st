accessing
routeForPragma: aPragma

	^ {
			#method -> (aPragma argumentAt: 2) asUppercase asSymbol.
			#route -> (self url, (aPragma argumentAt: 1)).
			#response -> [ :req | aPragma methodClass uniqueInstance perform: aPragma selector with: req ] } asDictionary