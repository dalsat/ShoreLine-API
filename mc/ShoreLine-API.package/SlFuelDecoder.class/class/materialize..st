utils
materialize: aString

	self flag: 'this is ugly (tm)'.
	^ [ FLMaterializer materializeFromByteArray: aString ]
		on: FLBadVersion
		do: [ :e | e resumeUnchecked: e defaultReturnValue ]