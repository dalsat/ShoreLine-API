initialization
initializePayloadsWith: aDictionary

	SlPayloadFactory allSubclasses do: [ :eachFactory |
		aDictionary at: eachFactory tag ifPresent: [ :payload |
			newInstance link: (eachFactory buildFrom: aDictionary) ] ]