accessing
removeKey: key ifAbsent: aBlock
	| result |
	
	result := self store selectOne: SlCachedObject where: { #key -> key }.
	
	result isNil
		ifTrue: aBlock
		ifFalse: [ self store remove: result ]