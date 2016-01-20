generated fields
prevUrl

	^ offset isZero
		ifTrue: [ nil ]
		ifFalse: [
			self url copy
				queryAt: #limit put: limit;
				queryAt: #offset put: (0 max: offset - limit);
				yourself ]