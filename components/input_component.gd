class_name InputComponent extends Component

@onready var entity: Entity = get_parent() as Entity
@export var brain_component: BrainComponent
## Optional for adjusting movement speed.
@export var speed_component: SpeedComponent

func _process(delta: float) -> void:
	if brain_component == null:
		print(name + " needs BrainComponent!")
	
	var acceleration: Vector2 = brain_component.move_vector * delta
	
	if speed_component != null:
		acceleration *= speed_component.speed
	
	entity.velocity += acceleration
