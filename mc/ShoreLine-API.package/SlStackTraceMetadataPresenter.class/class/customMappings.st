accessing
customMappings

	^ {
	#full -> [ :obj | obj stackTraceUrl ].
	#'top-class' -> [ :obj | obj model topClass ].
	#'top-method' -> [ :obj | obj model topMethod ]
	}