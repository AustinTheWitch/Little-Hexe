extends Node
class_name character_state
signal change_state
@export var character: character_base
func enter() -> void: pass
func exit() -> void: pass
func process(delta: float) -> void: pass
func physics_process(delta: float) -> void: pass
