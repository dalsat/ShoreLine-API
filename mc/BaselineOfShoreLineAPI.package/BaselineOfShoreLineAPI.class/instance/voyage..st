dependencies
voyage: spec

	spec
		baseline: 'Voyage' with: [
			spec
				className: 'BaselineOfVoyageMongo';
				repository: 'github://estebanlm/voyage/mc' ];
		import: 'Voyage'