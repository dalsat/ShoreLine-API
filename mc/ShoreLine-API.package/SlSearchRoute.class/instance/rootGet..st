routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>
	| project |
	
	project := aRequest at: #project.
	
	^ { #message -> ('search api in project ', project) } asDictionary