extends interactable
class_name reagent_base

@onready var sprite: Sprite2D = $Sprite2D
@export var reagent_ref: reagent_resource
var reagent_name: String
var reagent_texture: Texture2D

func _ready() -> void:
	resource_retrieval(reagent_ref)
	sprite.texture = reagent_texture

func resource_retrieval(reagent_res: reagent_resource) -> void:
	reagent_name = reagent_res.reagent_name
	reagent_texture = reagent_res.reagent_texture

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player_base:
		body.near_interactable = true
		body.interactable_ref = self

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is player_base:
		body.near_interactable = false
		body.interactable_ref = null
