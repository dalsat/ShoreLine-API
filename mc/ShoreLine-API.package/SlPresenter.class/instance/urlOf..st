accessing
urlOf: aString

	^ String streamContents: [ :s | s
		nextPutAll: self urlTemplate asString;
		nextPutAll: aString ]