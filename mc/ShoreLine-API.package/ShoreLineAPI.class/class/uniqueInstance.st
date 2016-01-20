accessing
uniqueInstance

	^ Instance ifNil: [ Instance := self new ]