initialization
initializeEventsWith: aDictionary

	newInstance newEvent: (SlEventFactory buildFrom: (self class eventsIn: aDictionary))