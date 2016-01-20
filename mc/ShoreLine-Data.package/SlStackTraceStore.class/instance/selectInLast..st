query
selectInLast: aDuration

	^ self selectWhere: [ :e | e date > (DateAndTime now - aDuration) ]