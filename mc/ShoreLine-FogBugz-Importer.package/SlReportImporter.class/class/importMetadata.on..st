api
importMetadata: aReport on: newReport

	newReport author: (self importAuthor: aReport).
	newReport summary: aReport title.
	newReport status: (self importStatus: aReport).
	newReport date: (aReport dateOpened ifNotNil: [ :date | date asDateAndTime ]).
	newReport dateClosed: (aReport dateClosed ifNotNil: [ :date | date asDateAndTime ])