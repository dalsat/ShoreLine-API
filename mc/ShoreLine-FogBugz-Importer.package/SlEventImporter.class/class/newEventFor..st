as yet unclassified
newEventFor: anEvent

	^ ((#(16 19) includes: anEvent user id)
		ifTrue: SlNotification
		ifFalse: SlComment) new