accessing
targetClass

	targetClass ifNil: [ self lookupSignature ].
	^ targetClass