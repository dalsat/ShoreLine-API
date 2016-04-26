baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		
		"dependencies"
		self neojson: spec.
		self cocoon: spec.
		self voyage: spec.
		self teapot: spec.
		self ci: spec.

		spec
			package: 'ShoreLine-Model';
			package: 'ShoreLine-Model-Factory' with: [ spec requires: #('ShoreLine-Model') ];
			package: 'ShoreLine-FogBugz-Importer' with: [ spec requires: #('CI') ];
			package: 'ShoreLine-Data' with: [ spec requires: #('ShoreLine-Model' 'ShoreLine-Model-Factory' 'NeoJSON' 'Voyage') ];
			package: 'ShoreLine-API' with: [ spec requires: #('ShoreLine-Data' 'NeoJSON' 'Teapot') ].
		
		spec group: 'FogBugz' with: #('ShoreLine-FogBugz-Importer').
		spec group: 'deploy' with: #('ShoreLine-API' 'FogBugz').
		spec group: 'development' with: #(deploy).
		spec group: 'default' with: #(development) ]