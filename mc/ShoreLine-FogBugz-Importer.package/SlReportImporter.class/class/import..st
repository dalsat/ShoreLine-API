api
import: aReport
	| newReport |
	
	newReport := self newReportFor: aReport.
	self importMetadata: aReport on: newReport.
	self importEvents: aReport on: newReport.
	^ newReport