validation
validateProjectFromRequest: aRequest

	(aRequest at: #project) = #pharo
		ifFalse: [ aRequest abort: (TeaResponse notFound body: 'project ', (aRequest at: #project), ' does not exist') ]