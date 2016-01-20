instance creation
withRequest: aRequest allowedParameters: aCollection

	^ self basicNew initialize
		request: aRequest;
		allowedParameters: aCollection;
		yourself