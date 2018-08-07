routes
rootPost: aRequest
	<route: '/' method: #POST description: ''>
	| id |
	
	id := (self data save: aRequest) asString.
	^ TeaResponse created
		body: { #id -> id } asDictionary;
		yourself