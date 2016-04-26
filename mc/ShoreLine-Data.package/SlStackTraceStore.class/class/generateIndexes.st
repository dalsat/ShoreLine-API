documentation
generateIndexes
	"self generateIndexes"
	
	^ super generateIndexes
	"db.getSiblingDB('ShoreLine-StackTraces').SlStackTrace.ensureIndex( { ""date"" : -1 } )"