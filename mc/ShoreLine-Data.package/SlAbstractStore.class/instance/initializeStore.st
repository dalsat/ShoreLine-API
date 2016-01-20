initialization
initializeStore

	^ VOMongoRepository
		host: self host
		database: self class databaseName
		username: username
		password: password