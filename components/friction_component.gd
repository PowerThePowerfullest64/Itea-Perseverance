class_name FrictionComponent extends Component

@onready var entity: Entity = get_parent() as Entity
## Velocity in pixels per second lost every second.
@export var friction: float

func _process(delta: float) -> void:
	var decay: float = friction * delta
	var speed: float = entity.velocity.length()

	speed = maxf(speed - decay, 0.0)

	if speed > 0:
		entity.velocity = entity.velocity.normalized() * speed
	else:
		entity.velocity = Vector2.ZERO
