class_name PlayerBrainComponent extends BrainComponent

var move_vector: Vector2

func _process(_delta: float) -> void:
	move_vector = Input.get_vector("left", "right", "up", "down")
