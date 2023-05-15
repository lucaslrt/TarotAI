extends Control

export(Array, Resource) var card_prefab_list

var card_list = []

func _ready():
	randomize()
	card_prefab_list.shuffle()
	
	card_list = get_children()
	#print(card_list)
	for i in card_list.size():
		card_list[i].set_card_prefab(card_prefab_list[i])
		print(card_list[i])
	
	pass
