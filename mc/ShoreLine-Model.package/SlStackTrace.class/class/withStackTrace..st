instance creation
withStackTrace: aCollection

	^ self basicNew initialize
		stacktrace: (self fromCollection: aCollection);
		yourself