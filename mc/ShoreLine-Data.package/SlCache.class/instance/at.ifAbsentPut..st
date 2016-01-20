accessing
at: key ifAbsentPut: aBlock
	| result |
	
	result := self store selectOne: SlCachedObject where: { #key -> key }.
	result isEmptyOrNil ifTrue: [
		result := aBlock cull: key.
		self save: result as: key ].
	^ result