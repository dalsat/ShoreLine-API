accessing
targetMethod

	targetMethod ifNil: [ self lookupSignature ].
	^ targetMethod