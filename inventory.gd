extends Control
class_name inventory

static var player_ref: player_base

func _ready() -> void: 
	player_ref = get_parent().get_parent()
	for reagent in player_ref.reagent_pouch:
		print(reagent)
