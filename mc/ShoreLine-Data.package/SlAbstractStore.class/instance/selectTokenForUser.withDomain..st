users
selectTokenForUser: login withDomain: aString
	| user |
	
	user := self store selectOne: SlUser where: [ :e | e username = login ].
	^ self store selectOne: SlToken where: [ :eachToken |
		((eachToken at: 'username._id') = login voyageId) &
		(eachToken domain = aString) ]