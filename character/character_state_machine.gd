extends Node
class_name charcter_state_machine

var character_states: Dictionary[String, character_state]
var start_state: character_state
var current_state: character_state

func _ready() -> void:
	for states in get_children():
		if states is character_state:
			character_states[states.name.to_lower()] = states
			states.change_state.connect(new_state)
	start_state = character_states["idle"]
	if start_state:
		start_state.enter()
		current_state = start_state
func _process(delta: float) -> void: if current_state: current_state.process(delta)
func _physics_process(delta: float) -> void: if current_state: current_state.physics_process(delta)
func new_state(state, state_name, state_selection: Dictionary = {}) -> void:
	if state != current_state: return
	var next_state: character_state = character_states.get(state_name.to_lower())
	if !next_state: return
	if current_state: current_state.exit()
	next_state.enter()
	current_state = next_state
