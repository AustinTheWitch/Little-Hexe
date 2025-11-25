extends Button
class_name item_space

var _name: String = ""
var _sprite: Texture2D
var _count: int = 0

func _ready() -> void:
	icon = _sprite
	text = str(_count)
