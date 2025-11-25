extends player_state
class_name player_move

func enter() -> void: 
	print("in move state")
func exit() -> void: pass
func process(delta: float) -> void:
	if character.velocity == Vector2.ZERO: change_state.emit(self, "idle")
	if character.near_interactable and Input.is_action_just_pressed("pick_up"): print("picking up")
func physics_process(delta: float) -> void:
	var direction: Vector2
	character.velocity.y = Input.get_axis("movement_up", "movement_down")
	character.velocity.x = Input.get_axis("movement_left", "movement_right")
	character.velocity.normalized()
	character.velocity *= character.character_speed
	character.move_and_slide()
