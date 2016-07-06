initialization
newAuthenticator

	^ SlAuthenticator new
		clientId: self settings githubClientId;
		clientSecret: self settings githubClientSecret;
		yourself