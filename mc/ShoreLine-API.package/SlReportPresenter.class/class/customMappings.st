accessing
customMappings

	^ {
	#number_of_events -> [ :obj | obj model events size ]
	"#events -> [ :obj | obj model links collect: #target ]"
	"#full -> [ :obj | obj stackTraceUrl ].
	#'top-class' -> [ :obj | obj model topClass ].
	#'top-method' -> [ :obj | obj model topMethod ]"
	}