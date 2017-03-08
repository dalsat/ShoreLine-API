initialization
registerRoutes

	SlRootRoute
		registerRoutesOn: (SlTeapotRouteVisitor on: teapot)
		atPath: '/'
	"SlRootRoute allRoutes do: [ :eachRoute |
		teapot
			perform: (eachRoute at: #method) asMutator
			with: (eachRoute at: #route) -> (eachRoute at: #response) ]"

	"self settings debug ifTrue: [ self registerTestRoutes ]"