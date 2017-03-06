as yet unclassified
neoJsonMapping: mapper

	mapper for: SlUser customDo: [ :mapping |
		mapping
			decoder: [ :string | "SlStackEvent fromString: string" ];
			encoder: [ :user | user username ] ].