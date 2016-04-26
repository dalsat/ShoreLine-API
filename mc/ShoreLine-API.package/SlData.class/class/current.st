accessing
current

	self class = SlData ifTrue: [ 'please use one of my subclasses' ].
	^ Current ifNil: [ Current := self basicNew initialize ]