queries
summaryFromRequest: aRequest
	| date query |

	date := aRequest at: #date ifAbsent: [ DateAndTime now ].	
	"query := SlQueryParameters withRequest: aRequest allowedParameters: #(date)."

	^ {
		#count -> self store count.
		#today -> (self store countInDate: date asDate).
	} asDictionary