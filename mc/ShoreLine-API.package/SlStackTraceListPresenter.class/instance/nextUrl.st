generated fields
nextUrl

	^ self count isZero
		ifTrue: [ nil ]
		ifFalse: [ self url copy
			queryAt: #limit put: limit;
			queryAt: #offset put: offset + limit;
			yourself ]