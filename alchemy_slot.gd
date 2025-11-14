extends TextureRect
class_name alchemy_slot

@export var debug_test: reagent_base
var _name: String
var _sprite: Texture2D

func _ready() -> void:
	_name = debug_test.reagent_name
	_sprite = debug_test.reagent_texture
	texture = _sprite
