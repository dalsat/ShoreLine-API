private
sectionAt: section at: key

	^ (self sectionAt: section)
		at: key
		ifAbsent: [ SlConfigurationError optionNotFound: key ]