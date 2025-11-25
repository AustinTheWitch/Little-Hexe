extends player_state
class_name player_idle

func enter() -> void: print("in idle state")
func exit() -> void: pass
func process(delta: float) -> void:
	if Input.get_axis("movement_up", "movement_down") or Input.get_axis("movement_left", "movement_right"):
		change_state.emit(self, "move")
	if character.near_interactable and Input.is_action_just_pressed("pick_up"):
		print("picking up")
		character.picking()
		#change_state.emit(self, "pickup")
func physics_process(delta: float) -> void: pass
