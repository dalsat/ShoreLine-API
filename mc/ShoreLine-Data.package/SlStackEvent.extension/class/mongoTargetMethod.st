*ShoreLine-Data
mongoTargetMethod
	<mongoDescription>
	
	^ VOToOneDescription new
		attributeName: #targetMethod;
		accessor: (MAPluggableAccessor
			read: [ :model | model targetMethod ]
			write: [ :model :value | model instVarNamed: #targetMethod put: value ])
		yourself