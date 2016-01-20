fields
database

	^ self databaseAt: #database ifAbsent: [ self class defaultDatabase ]