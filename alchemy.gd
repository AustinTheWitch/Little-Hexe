extends Node
class_name alchemy_system

#VALID POTION RECIPES WITH REAGENTS IN SPECIFIED ORDER AS [KEY] AND POTION IT CREATES AS [VALUE]
const potions: Dictionary = {["base", "mixing", "primary"]: "test potion"}
@onready var reagent_slots: HBoxContainer = $reagent_slots

#static var base_reagent: alchemy_slot
#static var mixing_reagent: alchemy_slot
#static var primary_reagent: alchemy_slot

func _ready() -> void:
	pass
	#base_reagent = reagent_slots.get_child(0)
	#mixing_reagent = reagent_slots.get_child(1)
	#primary_reagent = reagent_slots.get_child(2)
func potion_reagents(base, mixing, primary) -> Array:
	var unknown_potion: Array
	unknown_potion = [base, mixing, primary]
	print(unknown_potion)
	return unknown_potion
func potion_crafting(potion_crafted) -> void:
	if potions.has(potion_crafted):
		var potion = potions.get(potion_crafted)
		print(potion)
	else: print("POTION CRAFTING FAILED")
func _process(delta: float) -> void:
	pass
	#if Input.is_action_just_pressed("ui_down"): 
		#potion_crafting(potion_reagents(base_reagent._name, mixing_reagent._name, primary_reagent._name))
