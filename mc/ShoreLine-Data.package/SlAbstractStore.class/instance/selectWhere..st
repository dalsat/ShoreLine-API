query
selectWhere: aDictionaryOrBlock

	^ self store selectMany: self class targetClass where: aDictionaryOrBlock