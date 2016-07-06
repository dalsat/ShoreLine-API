api
import: anEvent

	^ (self newEventFor: anEvent)
		author: (self importAuthor: anEvent);
		date: anEvent date asDateAndTime;
		contents: anEvent comment;
		description: anEvent description;
		changes: anEvent changes;
		yourself