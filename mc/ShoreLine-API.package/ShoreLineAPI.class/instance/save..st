actions
save: aRequest

	self stacktraces write: aRequest.
	^ TeaResponse created