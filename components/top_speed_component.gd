class_name TopSpeedComponent extends Component

@onready var entity: Entity = get_parent() as Entity
## The maximum allowed speed in pixels per second.
@export var top_speed: float

func _process(_delta: float) -> void:
	# Limit speed!
	var speed: float = entity.velocity.length()
		
	if speed > top_speed:
		entity.velocity *= top_speed / speed
