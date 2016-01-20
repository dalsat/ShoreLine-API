instance creation
fromCollection: aCollection

	^ aCollection collect: [ :eachLine | SlStackEvent fromString: eachLine ]