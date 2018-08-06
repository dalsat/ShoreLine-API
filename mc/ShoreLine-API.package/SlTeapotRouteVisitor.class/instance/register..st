actions
register: aDictionary

	Transcript show: ('[route] register {1} at {2}' format: { aDictionary at: #method. aDictionary at: #route}); cr.
	teapot
		perform: (aDictionary at: #method) asMutator
		with: (aDictionary at: #route) -> (aDictionary at: #response)