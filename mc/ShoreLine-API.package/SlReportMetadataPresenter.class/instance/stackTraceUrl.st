generated fields
stackTraceUrl

	^ self url: 'api/stacktraces/id/{1}/full' format: { id }