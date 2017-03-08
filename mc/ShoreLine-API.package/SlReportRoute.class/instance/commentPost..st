routes
commentPost: aRequest
	<route: '/id/<id>/links' method: #GET description: ''>
	| id |

	id := self data newCommentFromRequest: aRequest.
	^ TeaResponse created
		body: { #id -> id } asDictionary;
		yourself