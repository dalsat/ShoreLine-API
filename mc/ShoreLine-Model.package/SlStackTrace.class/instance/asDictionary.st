converting
asDictionary
	
	^ Dictionary new
		at: #date put: self date printString;
		at: #version put: self version;
		at: #stacktrace put: (self signatures);
		at: #author put: self author;
		yourself