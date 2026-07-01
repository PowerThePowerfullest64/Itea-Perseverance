## The EntityManager manages all entities in the scene as its children.
extends Node

## Creates an [Entity] from the argument entity [PackedScene].
func create_entity(entity_scene: PackedScene) -> Entity:
	var entity: Entity = entity_scene.instantiate()
	add_child(entity)
	
	print(entity.name + " Entity was created!")
	
	return entity

## Destroys an [Entity] provided as the argument.
func destroy_entity(entity: Entity) -> void:
	if not is_instance_valid(entity):
		push_error("Could not delete invalid entity.")
	
	for child: Entity in get_children():
		if child == entity:
			on_entity_destroyed(entity)
			
			remove_child(child)
			child.queue_free()
			
			return
	
	push_error("Could not find entity in EntityManager.")

## Function executed when an [Entity] is destroyed.
## The last chance to extract important information from it.
func on_entity_destroyed(entity: Entity) -> void:
	entity.died.emit()
	print(entity.name + " Entity was destroyed!")

## The player instantiated when the game runs.
var player_scene: PackedScene = preload("uid://dx7nbf6os8nbc")

func _ready() -> void:
	create_entity(player_scene)
