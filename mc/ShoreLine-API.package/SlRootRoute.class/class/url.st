accessing
url
	
	^ String streamContents: [ :s |
		self == SlRootRoute ifFalse: [
			s << self superclass url << $/ ].
		s << self path ].