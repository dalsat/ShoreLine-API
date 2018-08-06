registration
registerRoutesOn: aRouteVisitor atPath: aString
	| path |
	
	path := self pathWithPrefix: aString.
	aRouteVisitor registerAll: (self routesWithPrefix: path).
	self subclasses
		select: #isActive
		thenDo: [ :eachSubRoute | eachSubRoute registerRoutesOn: aRouteVisitor atPath: path ]