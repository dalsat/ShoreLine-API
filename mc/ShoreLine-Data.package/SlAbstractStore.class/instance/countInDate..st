query
countInDate: aDate

	^ self countWhere: [ :e | (e date >= aDate) & (e date < (aDate + 1 day)) ]