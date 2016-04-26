documentation
generateIndexes
	"self generateIndexes"
	
	^ 'db.getSiblingDB("', self databaseName, '").', self targetClass name, 'SlStackTrace.ensureIndex( { ""date"" : -1 } )'