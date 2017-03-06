dependencies
voyage: spec

	spec
		baseline: 'Voyage' with: [
			spec
				className: 'BaselineOfVoyage';
				repository: 'github://pharo-nosql/voyage/mc';
				loads: 'mongo' ];
		import: 'Voyage'