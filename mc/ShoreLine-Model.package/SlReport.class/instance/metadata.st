accessing
metadata

	^ Dictionary new
		at: 'index' put: index;
		at: 'date' put: date;
		at: 'status' put: status;
		at: 'author' put: author;
		yourself