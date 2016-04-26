queries
fromRequest: aRequest
	| query |
	
	query := SlQuery
		withRequest: aRequest
		allowedParameters: #(author class topClass method topMethod).

	^ self where: query fromRequest: aRequest