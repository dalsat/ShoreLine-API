query
countWhere: aDictionaryOrBlock

	^ self store count: self class targetClass where: aDictionaryOrBlock "asMongoQuery"