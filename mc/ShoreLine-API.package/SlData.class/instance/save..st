actions
save: aRequest
	
	"[" self write: (self class
		reifyFrom: (self class decode: aRequest)
		andRequest: aRequest) "]
		on: Exception
		do: [ SlBadFormat signal ]"