*ShoreLine-Data
mongoEvents
	<mongoDescription>
	
	^ VOMongoToManyDescription new
		attributeName: 'stacktrace';
		kind: SlStackEvent;
		yourself