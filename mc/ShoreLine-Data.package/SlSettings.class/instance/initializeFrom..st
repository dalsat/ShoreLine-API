initialization
initializeFrom: aFileReference

	(self readFrom: aFileReference) keysAndValuesDo: [ :eachKey :eachValue |
		settings at: eachKey put: eachValue ]