comparing
= anObject

	^ (anObject isKindOf: SlStackEvent)
		ifTrue: [ (self targetClass = anObject targetClass)
			& (self targetMethod = anObject targetMethod) ]
		ifFalse: [ false ]