fields
logFile

	^ self logAt: #logfile ifAbsent: [ self class defaultLogFile ]