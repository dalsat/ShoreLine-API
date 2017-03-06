api
import: aUser

	^ self users
		at: aUser username
		ifAbsentPut: [ self newUserFrom: aUser ]