instance creation
neoJsonMapping: mapper

	mapper for: SlStackEvent customDo: [ :mapping |
		mapping
			decoder: [ :string | SlStackEvent fromString: string ];
			encoder: [ :stackEvent | stackEvent rawContents ] ].