queries
withClass: aRequest
	
	self flag: 'demo code'.
	
	^ (SlListPresenter withModel: ((self where: {  } from: 0 limit: 50) select: [ :e | e model summary includesSubstring: (aRequest at: #class) ]))
		offset: 0;
		limit: 50;
		url: (aRequest absoluteUrl host: ShoreLineAPI uniqueInstance host; yourself);
		yourself