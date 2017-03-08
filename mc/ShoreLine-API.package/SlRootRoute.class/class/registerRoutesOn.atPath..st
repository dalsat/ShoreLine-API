as yet unclassified
registerRoutesOn: aRouteVisitor atPath: aString

	aRouteVisitor registerAll: self routes.
	self subclasses select: #isActive thenDo: [ :eachSubRoute |
		eachSubRoute registerRoutesOn: aRouteVisitor atPath: aString, self path ]