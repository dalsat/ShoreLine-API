initialization
initializeStore

	^ VOMongoRepository
		host: 'localhost'
		database: self class databaseName