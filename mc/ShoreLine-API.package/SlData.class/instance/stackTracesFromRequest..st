queries
stackTracesFromRequest: aRequest
	| query |
	
	query := SlQuery
		withRequest: aRequest
		allowedParameters: #(author class topClass method topMethod).

	^ self tracesWhere: query fromRequest: aRequest