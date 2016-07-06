actions
requestLogin: username withPassword: password
	
	^ ZnEasy client
		username: username password: password;
		put: (self class authUrl format: {
			'client_id' -> clientId.
			'scopes' -> self class scopes } asDictionary)
		contents: (STON toJsonString: { 'client_secret' -> clientSecret } asDictionary);
		response