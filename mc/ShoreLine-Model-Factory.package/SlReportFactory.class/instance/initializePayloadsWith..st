initialization
initializePayloadsWith: aDictionary

	SlPayloadFactory allSubclasses do: [ :eachFactory |
		(aDictionary at: #payloads) at: eachFactory tag ifPresent: [ :payload |
			newInstance link: (eachFactory buildFrom: aDictionary) ] ]