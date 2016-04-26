private
basicLink: aSlShard as: aSlLinkClass

	self == aSlShard
		ifTrue: [ self error: 'a shard cannot link itself' ]
		ifFalse: [ self links add: (aSlLinkClass to: aSlShard) ]