fields
githubClientId

	^ self authenticationAt: #'github-client-id' ifAbsent: ''