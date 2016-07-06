dependencies
voyage: spec

	spec
		baseline: 'Voyage' with: [
			spec
				className: 'BaselineOfVoyageMongo';
				repository: 'github://pharo-nosql/voyage/mc' ];
		import: 'Voyage'