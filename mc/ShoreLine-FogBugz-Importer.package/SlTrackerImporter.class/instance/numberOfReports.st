accessing
numberOfReports

	^ numberOfReports ifNil: [ numberOfReports := self class defaultNumberOfReports ]