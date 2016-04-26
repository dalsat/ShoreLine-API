queries
summaryFromRequest: aRequest
	| date |

	date := aRequest at: #date ifAbsent: [ DateAndTime now ].	

	^ {
		#count -> self store count.
		#today -> (self store countInDate: date asDate).
	} asDictionary