api
importReports: aReportCollection

	^ aReportCollection collect: [ :e | SlReportImporter import: e ]