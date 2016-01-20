baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		
		"dependencies"
		self neojson: spec.
		self voyage: spec.
		self teapot: spec.

		spec
			package: 'ShoreLine-Model';
			package: 'ShoreLine-Data' with: [ spec requires: #('ShoreLine-Model' 'NeoJSON' 'Voyage') ];
			package: 'ShoreLine-API' with: [ spec requires: #('ShoreLine-Data' 'NeoJSON' 'Teapot') ] ]