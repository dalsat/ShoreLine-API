printing
printOn: aStream

	username ifNotNil: [ aStream << self username ].
	email ifNotNil: [ $( << Character space << self email << $) ]