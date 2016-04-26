convenience
reifyFrom: aDictionary andRequest: aRequest

	^ self subclassResponsibility
	"^ SlEntityAdapter adapters
		detect: [ :e | e canRead: aRequest ]
		ifFound: [ :e | e reifyFrom: aDictionary andRequest: aRequest ]
		ifNone: [ SlBadFormat signal ]"