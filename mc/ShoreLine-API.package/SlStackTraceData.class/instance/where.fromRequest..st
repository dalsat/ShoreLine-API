queries
where: aBlockOrDictionary fromRequest: aRequest
	| offset limit |
	
	offset := 0 max: (aRequest at: #offset ifAbsent: 0) asNumber.
	limit := (aRequest at: #limit ifAbsent: self class pagingLimit) asNumber min: self class pagingLimit.

	^ (SlListPresenter withModel: (self
			where: aBlockOrDictionary
			from: offset
			limit: limit))
		offset: offset;
		limit: limit;
		url: (aRequest absoluteUrl host: ShoreLineAPI uniqueInstance host; yourself);
		yourself