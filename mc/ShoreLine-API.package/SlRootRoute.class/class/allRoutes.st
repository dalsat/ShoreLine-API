accessing
allRoutes
	
	^ self routes, ((self subclasses select: #isActive) flatCollect: #routes)