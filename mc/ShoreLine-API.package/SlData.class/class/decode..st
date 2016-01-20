convenience
decode: aRequest

	^ SlDecoder decoders
		detect: [ :e | e canDecode: aRequest ]
		ifFound: [ :e | e decode: aRequest ]
		ifNone: [ SlBadFormat signal ]