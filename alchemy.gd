extends Node
class_name alchemy_system

#VALID POTION RECIPES WITH REAGENTS IN SPECIFIED ORDER AS [KEY] AND POTION IT CREATES AS [VALUE]
const potions: Dictionary = {["water vial", "phoenix feather", "tea leaves"]: "Restoration Potion"}
@onready var current_reagents: HBoxContainer = $"../selected_reagents"

static var base_reagent: selected_reagent
static var mixing_reagent: selected_reagent
static var primary_reagent: selected_reagent
func _ready() -> void:
	base_reagent = current_reagents.get_child(0)
	mixing_reagent = current_reagents.get_child(1)
	primary_reagent = current_reagents.get_child(2)
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
	if Input.is_action_just_pressed("ui_down"): 
		potion_crafting(potion_reagents(base_reagent.sprite_name, mixing_reagent.sprite_name, primary_reagent.sprite_name))
