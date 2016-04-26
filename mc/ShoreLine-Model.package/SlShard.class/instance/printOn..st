printing
printOn: aStream

	super printOn: aStream.
	aStream
		<< $( << self author asString << ', '
		<< self numberOfLinks << ' links' << $)