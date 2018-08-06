utils
routesWithPrefix: aString

	^ (Pragma allNamed: #route:method:description: in: self)
			collect: [ :eachPragma | {
				#method -> (eachPragma argumentAt: 2) asUppercase asSymbol.
				#route -> (aString, (eachPragma argumentAt: 1)).
				#response -> [ :req | eachPragma methodClass uniqueInstance perform: eachPragma selector with: req ] } asDictionary ]