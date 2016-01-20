accessing
dnuMessage

	^ self isDnu
		ifTrue: [ | regex |
			regex := 'doesNotUnderstand\: (.*)' asRegex. "#\S+"
			regex search: self rawContents.
			(regex subexpression: 2)
				ifNil: [ self error: 'DNU message not found' ] ]
		ifFalse: [ self error: 'this line is not a DNU' ]