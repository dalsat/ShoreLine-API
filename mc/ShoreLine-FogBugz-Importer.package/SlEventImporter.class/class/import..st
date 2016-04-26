api
import: anEvent

	^ (self newEventFor: anEvent)
		author: anEvent user;
		date: anEvent date asDateAndTime;
		contents: anEvent comment;
		description: anEvent description;
		changes: anEvent changes;
		yourself