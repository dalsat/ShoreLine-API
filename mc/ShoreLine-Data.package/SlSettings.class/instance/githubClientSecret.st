fields
githubClientSecret

	^ self authenticationAt: #'github-client-secret' ifAbsent: ''