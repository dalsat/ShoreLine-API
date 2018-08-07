routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>
	| project |
	
	project := aRequest at: #project.
	^ { #message -> ('ok subproject ', project) } asDictionary