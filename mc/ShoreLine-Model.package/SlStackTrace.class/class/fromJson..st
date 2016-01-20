instance creation
fromJson: aString

	^ ((NeoJSONReader
		asClassIfAbsent: [ self error: 'You need to install NeoJSONReader' ])
		on: aString readStream)
			for: #ArrayOfSlStackTraces customDo: [ :mapping |
				mapping listOfElementSchema: SlStackTrace ];
			nextAs: #ArrayOfSlStackTraces