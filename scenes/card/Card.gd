tool
extends Control

export(Resource) var card_prefab setget set_card_prefab

func set_card_prefab(prefab) -> void:
	card_prefab = prefab
	#print("prefab: ", prefab)
	#print("card_prefab: ", card_prefab)
	update()

func _draw() -> void:
	_set_card(card_prefab)

func _set_card(card_data) -> void:
	if(card_data):
		$Front.texture = card_data.photo


func _on_Card_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			$AnimationPlayer.play("Flip")
			#print("I've been clicked D:")
