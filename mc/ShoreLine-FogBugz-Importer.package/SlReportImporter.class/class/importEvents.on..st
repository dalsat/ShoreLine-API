api
importEvents: aReport on: newReport
	| events |
	
	events := aReport events collect: [ :e | SlEventImporter import: e ].
	events overlappingPairsDo: [ :a :b | a link: b as: self linkClass ].
	newReport linkAll: events as: self linkClass