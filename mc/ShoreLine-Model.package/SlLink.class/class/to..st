instance creation
to: targetShard

	^ self basicNew initialize
		target: targetShard;
		validate;
		yourself