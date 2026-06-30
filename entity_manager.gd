extends Node

func create_entity(entity_scene: PackedScene) -> Entity:
	var entity: Entity = entity_scene.instantiate()
	add_child(entity)
	
	print(entity.name + " Entity was created!")
	
	return entity

func destroy_entity(entity: Entity) -> void:
	for child: Entity in get_children():
		if child == entity:
			on_entity_destroyed(entity.name)
			
			remove_child(child)
			child.queue_free()

func on_entity_destroyed(_name: String) -> void:
	print(_name + " Entity was destroyed!")

var player_scene: PackedScene = preload("uid://dx7nbf6os8nbc")

func _ready() -> void:
	create_entity(player_scene)
