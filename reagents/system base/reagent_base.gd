extends Node
class_name reagent_base

@onready var sprite: Sprite2D = $Sprite2D
@export var reagent_ref: reagent_resource
var reagent_name: String
var reagent_count: int
var reagent_texture: Texture2D

func _ready() -> void:
	resource_retrieval(reagent_ref)
	sprite.texture = reagent_texture

func resource_retrieval(reagent_res: reagent_resource) -> void:
	reagent_name = reagent_res.reagent_name
	reagent_texture = reagent_res.reagent_texture
