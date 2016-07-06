printing
printOn: aStream

	username ifNotNil: [ aStream << self username ].
	email ifNotNil: [ aStream << $( << Character space << self email << $) ]