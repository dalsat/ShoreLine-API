dependencies
voyage: spec

	spec project: 'Voyage' with: [
		spec
			className: 'ConfigurationOfVoyageMongo';
			repository: 'http://www.smalltalkhub.com/mc/estebanlm/Voyage/main';
			loads: #(mongo);
			version: #stable ]