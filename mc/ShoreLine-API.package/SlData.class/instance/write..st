actions
write: aRequest
	
	self store save: (self class
		reifyFrom: (self class decode: aRequest)
		andRequest: aRequest)