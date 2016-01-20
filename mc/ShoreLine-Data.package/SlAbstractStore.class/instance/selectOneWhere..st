query
selectOneWhere: aDictionaryOrBlock

	^ self store selectOne: self class targetClass where: aDictionaryOrBlock