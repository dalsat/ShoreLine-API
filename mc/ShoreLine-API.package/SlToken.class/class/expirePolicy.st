accessing
expirePolicy

	^ [ :token | DateAndTime now - token lastUsed > 2 days ]