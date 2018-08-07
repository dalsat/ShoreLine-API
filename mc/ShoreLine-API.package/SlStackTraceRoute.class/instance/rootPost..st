routes
rootPost: aRequest
	<route: '/' method: #POST description: ''>
	| id |
	
	self validateProjectFromRequest: aRequest.
	id := (self data save: aRequest) asString.
	^ TeaResponse created
		body: { #id -> id } asDictionary;
		yourself