actions
save: aRequest

	"self halt."
	"[" self write: (self class
		reifyFrom: (self class decode: aRequest)
		andRequest: aRequest) "]
		on: Exception
		do: [ SlBadFormat signal ]"