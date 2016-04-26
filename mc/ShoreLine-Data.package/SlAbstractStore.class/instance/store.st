accessing
store

	^ store ifNil: [ store := self newStore ]