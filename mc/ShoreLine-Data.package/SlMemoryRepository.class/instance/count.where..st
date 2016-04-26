as yet unclassified
count: aClass where: aBlockClosure 
	
	^ (self selectMany: aClass where: aBlockClosure asMongoQuery) size