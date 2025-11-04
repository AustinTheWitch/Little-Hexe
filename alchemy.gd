extends Node
class_name alchemy_system

#VALID POTION RECIPES WITH REAGENTS IN SPECIFIED ORDER AS [KEY] AND POTION IT CREATES AS [VALUE]
const potions: Dictionary = {["water vial", "phoenix feather", "tea leaves"]: "Restoration Potion"}

@export var base_reagent: reagent_base
@export var mixing_reagent: reagent_base
@export var primary_reagent: reagent_base

func potion_reagents(base, mixing, primary) -> Array:
	var unknown_potion: Array
	unknown_potion = [base, mixing, primary]
	return unknown_potion
func potion_crafting(potion_crafted) -> void:
	if potions.has(potion_crafted):
		var potion = potions.get(potion_crafted)
		print(potion)
	else: print("POTION CRAFTING FAILED")
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"): 
		potion_crafting(potion_reagents(base_reagent.reagent_name, mixing_reagent.reagent_name, primary_reagent.reagent_name))
		
