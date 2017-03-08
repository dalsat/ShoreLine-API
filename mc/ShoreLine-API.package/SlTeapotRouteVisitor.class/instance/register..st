actions
register: aDictionary

	teapot
		perform: (aDictionary at: #method) asMutator
		with: (aDictionary at: #route) -> (aDictionary at: #response)
	"Transcript show: ('[{1}] {2}' format: { aDictionary at: #method. aDictionary at: #route}); cr"