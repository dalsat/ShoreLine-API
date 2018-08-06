utils
pathWithPrefix: aString

	^ self path
		ifEmpty: aString
		ifNotEmpty: [ :path | aString, '/', path ]