accessing
id

	^ String streamContents: [ :stream |
		date printYMDOn: stream.
		stream
			<< $- << date hours
			<< $- << date minutes
			<< $-.
		index ifNotNil: [ stream << index ] ].