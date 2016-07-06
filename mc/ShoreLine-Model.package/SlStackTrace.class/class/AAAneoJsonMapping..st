mapping
AAAneoJsonMapping: mapper

	mapper for: self do: [ :mapping |
		mapping mapAllInstVars.
		(mapping mapInstVar: #stacktrace) valueSchema: #ArrayOfSlStackEvents.
		(mapping mapInstVar: #date) valueSchema: DateAndTime.
		"(mapping mapInstVar: #dateCreated) valueSchema: DateAndTime" ].

	mapper for: DateAndTime customDo: [ :mapping |
		mapping
			decoder: [ :string | DateAndTime fromString: string ];
			encoder: [ :dateAndTime | dateAndTime printString ] ].
	
	mapper for: #ArrayOfSlStackEvents customDo: [ :mapping |
		mapping listOfElementSchema: SlStackEvent ].  