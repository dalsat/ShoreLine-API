routes
rootGet: aRequest
	<route: '/' method: #GET description: ''>
	| project |
	
	project := aRequest at: #project.
	
	^ { #project -> ('home of project ', project) } asDictionary