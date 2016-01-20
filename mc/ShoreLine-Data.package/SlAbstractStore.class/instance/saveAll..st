action
saveAll: aCollection

	aCollection do: [ :each | self store save: each ]