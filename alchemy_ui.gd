extends Control
class_name alchemy_ui
static var alchemy_ready: bool = false
func _process(delta: float) -> void:
	visible = alchemy_ready
	if Input.is_action_just_pressed("ui_right"): 
		print("UI on or off")
		alchemy_ready != alchemy_ready
