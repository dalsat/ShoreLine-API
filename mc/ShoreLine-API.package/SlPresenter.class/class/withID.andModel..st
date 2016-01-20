instance creation
withID: id andModel: anObject

	^ self basicNew initialize
		id: id;
		model: anObject;
		yourself