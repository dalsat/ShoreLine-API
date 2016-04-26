data
stacktraces
	
	^ self links
		reject: [ :e | e isKindOf: SlReportLink ]
		thenCollect: #target