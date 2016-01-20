fields
username

	^ self databaseAt: #username ifAbsent: [ '' ]