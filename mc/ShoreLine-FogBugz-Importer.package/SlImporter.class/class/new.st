as yet unclassified
new

	self == SlImporter
		ifTrue: [ self error: 'abstract class' ]
		ifFalse: [ ^ self basicNew initialize ]