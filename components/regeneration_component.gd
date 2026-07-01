class_name RegenerationComponent extends Component

@export var regeneration_rate: float
@export var health_component: HealthComponent

func _process(delta: float) -> void:
	if health_component == null:
		push_error(name + " needs HealthComponent!")
		return
	
	if health_component.health < health_component.max_health:
		health_component.health += regeneration_rate * delta
		health_component.health = minf(health_component.health, health_component.max_health)
