extends player_state
class_name player_idle

func enter() -> void: print("in idle state")
func exit() -> void: pass
func process(delta: float) -> void: pass
func physics_process(delta: float) -> void: pass
