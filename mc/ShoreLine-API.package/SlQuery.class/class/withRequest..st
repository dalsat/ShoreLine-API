instance creation
withRequest: aRequest

	^ self basicNew initialize
		request: aRequest;
		yourself