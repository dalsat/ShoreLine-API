*ShoreLine-Data
mongoTargetClass
	<mongoDescription>
	
	^ VOToOneDescription new
		attributeName: #targetClass;
		accessor: (MAPluggableAccessor
			read: [ :model | model targetClass ]
			write: [ :model :value | model instVarNamed: #targetClass put: value ])
		yourself