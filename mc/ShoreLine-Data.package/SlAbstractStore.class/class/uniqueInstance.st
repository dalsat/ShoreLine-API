accessing
uniqueInstance

	self == SlAbstractStore ifTrue: [ self error: 'Abstract class' ].
	^ uniqueInstance ifNil: [ uniqueInstance := self basicNew initialize ]