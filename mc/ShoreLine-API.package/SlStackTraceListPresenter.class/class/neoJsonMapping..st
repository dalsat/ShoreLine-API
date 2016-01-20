mapping
neoJsonMapping: mapper
	
	mapper for: self do: [ :mapping |
		
		mapping mapProperty: #count
			getter: [ :obj | obj count ] setter: [ ].
		mapping mapProperty: #stacktraces
			getter: [ :obj | obj model ] setter: [ ].
		mapping mapProperty: #first
			getter: [ :obj | obj firstUrl ] setter: [ ].
		mapping mapProperty: #next
			getter: [ :obj | obj nextUrl ] setter: [ ].
		mapping mapProperty: #prev
			getter: [ :obj | obj prevUrl ] setter: [ ].
		mapping mapProperty: #self
			getter: [ :obj | obj url ] setter: [ ] ].

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