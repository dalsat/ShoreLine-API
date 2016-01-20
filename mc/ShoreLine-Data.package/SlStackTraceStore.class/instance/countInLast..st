query
countInLast: aDuration

	^ self countWhere: [ :e | e date > (DateAndTime now - aDuration) ]