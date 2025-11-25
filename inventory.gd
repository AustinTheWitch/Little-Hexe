extends user_interface
class_name user_inventory
@onready var row_1: HBoxContainer = $"VBoxContainer/row 1"

func _ready() -> void:
	update_inventory(player.item_pouch)
func update_inventory(item_pouch: Dictionary) -> void:
	var items_list: Array[reagent_base] = item_pouch.keys()
	var item_buttons: Array[Node] = row_1.get_children()
	var item_count: int = -1
	for x in items_list:
		item_count += 1
		item_buttons[item_count].icon = x.reagent_texture
		item_buttons[item_count].text = str(item_pouch.get(x))
