extends ui_sprite
class_name selected_reagent
@export var reagent: reagent_base

func _ready() -> void:
	sprite_name = reagent.reagent_name
	texture_normal = reagent.reagent_sprite
