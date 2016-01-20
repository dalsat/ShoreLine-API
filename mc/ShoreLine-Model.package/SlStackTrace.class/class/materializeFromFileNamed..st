instance creation
materializeFromFileNamed: aString

	^ self withStackTrace: (FLMaterializer materializeFromFileNamed: aString)