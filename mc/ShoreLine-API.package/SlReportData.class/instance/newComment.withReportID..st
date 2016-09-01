queries
newComment: aSlEvent withReportID: id
	| report |
	
	report := self withID: id.
	report model link: aSlEvent.
	self store save: report.
	self store save: aSlEvent.
	report inspect.
	^ 'ok'