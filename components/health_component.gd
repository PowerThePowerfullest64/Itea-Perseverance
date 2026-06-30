class_name HealthComponent extends Component

@export var max_health: float
var health: float

func _ready() -> void:
	health = max_health
