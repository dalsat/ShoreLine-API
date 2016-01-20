accessing
store

	^ store ifNil: [ store := self initializeStore ]