accessing
events

	^ self links
		select: [ :e | e isKindOf: SlReportLink ]
		thenCollect: #target