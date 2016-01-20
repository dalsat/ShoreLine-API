query
selectWhere: aDictionaryOrBlock order: orderDictionary limit: limit offset: offset

	^ self store selectMany: self class targetClass where: aDictionaryOrBlock order: orderDictionary limit: limit offset: offset