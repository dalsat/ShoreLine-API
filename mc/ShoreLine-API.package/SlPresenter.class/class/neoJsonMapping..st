mapping
neoJsonMapping: mapper
	
	mapper for: self do: [ :mapping |
		"injecting the id in the model"
		mapping mapProperty: #id getter: [ :obj | obj id asString ] setter: [ ].
		
		self displayFields do: [ :eachField | mapping
			mapProperty: eachField
			getter: [ :obj | obj model perform: eachField ]
			setter: [ ] ].

		self customMappings do: [ :each |
			mapping mapProperty: each key
			getter: each value
			setter: [ ] ] ].

	mapper for: DateAndTime customDo: [ :mapping |
		mapping
			decoder: [ :string | DateAndTime fromString: string ];
			encoder: [ :dateAndTime | dateAndTime asString ] ].
		
	mapper for: Date customDo: [ :mapping |
		mapping
			decoder: [ :string | Date fromString: string ];
			encoder: [ :date | date asString ] ].
	
	mapper for: ZnUrl customDo: [ :mapping |
		mapping
			decoder: [ :string | string asZnUrl ];
			encoder: [ :url | url asString ] ].