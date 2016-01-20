convenience
requestAddressOf: aRequest

	^ aRequest headers
		at: 'X-Forwarded-For'
		ifAbsent: [ aRequest headers at: ZnConstants remoteAddressHeader ]