class_name RegenerationComponent extends Component

@export var regeneration_rate: float
@export var health_component: HealthComponent

func _process(delta: float) -> void:
	if health_component == null:
		print(name + " needs HealthComponent!")
		return
	
	health_component.health += regeneration_rate * delta
	health_component.health = min(health_component.health, health_component.max_health)
