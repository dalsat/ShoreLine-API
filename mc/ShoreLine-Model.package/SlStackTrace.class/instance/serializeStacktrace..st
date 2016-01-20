operations
serializeStacktrace: aCollection

	self stacktrace: (aCollection collect: [ :eachLine | SlStackEvent fromString: eachLine ])