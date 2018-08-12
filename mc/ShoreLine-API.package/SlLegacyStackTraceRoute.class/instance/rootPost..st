routes
rootPost: aRequest
	<route: '/' method: #POST description: ''>
	| id |
	
	[ id := (self data save: aRequest) asString ]
		on: SlBadFormat do: [ ^ TeaResponse badRequest body: 'invalid format' ].
		
	^ TeaResponse created
		body: { #id -> id } asDictionary;
		yourself