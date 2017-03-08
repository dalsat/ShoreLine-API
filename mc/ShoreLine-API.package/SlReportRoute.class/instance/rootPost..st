routes
rootPost: aRequest
	<route: '/' method: #GET description: ''>
	| id |

	id := self data save: aRequest.
	^ TeaResponse created
		body: { #id -> id } asDictionary;
		yourself