class_name HealthComponent extends Component

@onready var entity: Entity = get_parent()
@export var max_health: float
var health: float

func _ready() -> void:
	health = max_health

func apply_damage(amount: float) -> void:
	health -= amount
	health = maxf(health, 0.0)
	
	if is_equal_approx(health, 0.0):
		entity.destroy()
