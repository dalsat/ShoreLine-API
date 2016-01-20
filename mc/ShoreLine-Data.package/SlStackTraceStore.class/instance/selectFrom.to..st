query
selectFrom: aStartDate to: aEndDate

	^ self selectWhere: [ :e | (e date >= aStartDate) & (e date < aEndDate) ]