accessing
stackTraceMap

	^ {
	#date -> [ DateAndTime now asUTC ].
	#ip -> [ :dict :req | self requestAddressOf: req ].
	#serializeStacktrace -> #payload.
	#dateCreated -> #date.
	#author -> #author.
	#auto -> #auto.
	#version -> #version }