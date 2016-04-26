accessing
uniqueInstance

	^ Instance ifNil: [ Instance := self basicNew initialize ]