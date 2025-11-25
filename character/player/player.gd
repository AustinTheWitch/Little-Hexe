extends character_base
class_name player_base

static var reagent_pouch: Dictionary[String, int]
static var near_interactable: bool
static var interactable_ref: interactable
static var item_pouch: Dictionary[reagent_base, int]
@onready var inventory: user_inventory = $"CanvasLayer/user interface/inventory"

func _ready() -> void: 
	character_speed = 200
	var reagent_temp
	var item_temp
func _process(delta: float) -> void: pass
func debug() -> void: pass
func picking() -> void:
	if item_pouch.is_empty() or !item_pouch.has(interactable_ref):
		item_pouch.set(interactable_ref, 1)
	elif item_pouch.has(interactable_ref):
		var new_count: int = item_pouch.get(interactable_ref)
		new_count += 1
		item_pouch.set(interactable_ref, new_count)
	inventory.update_inventory(item_pouch)
	print(item_pouch)
