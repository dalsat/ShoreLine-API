generated fields
firstUrl

	^ offset isZero
		ifTrue: [ nil ]
		ifFalse: [
			self url copy
				queryAt: #limit put: limit;
				queryAt: #offset put: 0;
				yourself ]