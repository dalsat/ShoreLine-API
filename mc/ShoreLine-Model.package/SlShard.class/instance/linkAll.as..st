linking
linkAll: aSlShardCollection as: aSlLinkClass

	aSlShardCollection do: [ :e | self link: e as: aSlLinkClass ]