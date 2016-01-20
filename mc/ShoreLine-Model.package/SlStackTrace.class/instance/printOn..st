printing
printOn: aStream

	"super printOn: aStream."
	
	aStream
		<< self topClass << ': '
		<< self date asDate yyyymmdd << Character space
		<< self author << Character space
		<< $( << self stacktrace size << ' events' << $).