## An [Entity] is a gameobject which exists, moves and interacts with the world via its attached [Component]s.
class_name Entity extends CharacterBody2D

## The signal emitted once the [Entity] dies and is marked for destruction.
signal died

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	move_and_slide()

## OOP way of destroying an [Entity].
## Just calls [method EntityManager.destroy_entity] internally.
func destroy() -> void:
	EntityManager.destroy_entity(self)
