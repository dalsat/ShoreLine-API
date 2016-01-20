utils
ensureConfigurationFile

	self configurationFile exists ifFalse: [ 
		self configurationFile writeStreamDo: [ :stream |
			(NeoJSONWriter on: stream)
				prettyPrint: true;
				nextPut: self class configurationTemplate ] ].
	^ self configurationFile