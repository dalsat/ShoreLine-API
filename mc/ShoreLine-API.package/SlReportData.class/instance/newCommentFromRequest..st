queries
newCommentFromRequest: aRequest

	"self beAuthenticated."
	^ self
		newComment: (self class reifyCommentFrom: (STON fromString: aRequest contents) andRequest: aRequest)
		withReportID: (aRequest at: #id)