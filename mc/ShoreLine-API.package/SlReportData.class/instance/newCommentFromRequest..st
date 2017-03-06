queries
newCommentFromRequest: aRequest
	| newComment |
	"self beAuthenticated."
	
	newComment := (self class
		reifyCommentFrom: (STON fromString: aRequest contents)
		andRequest: aRequest).
	
	self flag: 'implement #user'.
	"newComment author: self user"
	
	^ self
		newComment: newComment
		withReportID: (aRequest at: #id)