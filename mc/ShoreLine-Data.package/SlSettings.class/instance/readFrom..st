initialization
readFrom: aFileReference

	^ aFileReference asFileReference readStreamDo: [ :stream | (NeoJSONReader on: stream) next ]