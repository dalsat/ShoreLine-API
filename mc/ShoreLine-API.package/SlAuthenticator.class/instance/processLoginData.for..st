actions
processLoginData: aDictionary for: username

	^ (aDictionary at: #token)
		"ifEmpty: [ SlToken loadUser: username ]"
		ifNotEmpty: [ self newTokenFor: username withData: aDictionary ]