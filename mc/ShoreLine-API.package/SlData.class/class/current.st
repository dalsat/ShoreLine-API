accessing
current

	self class = SlData ifTrue: [ self error: 'Abstract class' ].
	^ Current ifNil: [ Current := self basicNew initialize ]