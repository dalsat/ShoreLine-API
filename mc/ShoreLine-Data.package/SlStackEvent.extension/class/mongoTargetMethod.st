*ShoreLine-Data
mongoTargetMethod
	<mongoDescription>
	
	^ VOMongoToOneDescription new
		attributeName: #targetMethod;
		accessor: (MAPluggableAccessor
			read: [ :model | model targetMethod ]
			write: [ :model :value | model instVarNamed: #targetMethod put: value ])
		yourself