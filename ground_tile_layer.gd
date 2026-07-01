extends TileMapLayer

@export var width: int = 64
@export var height: int = 64

const RUG_ATLAS: Vector2i = Vector2i.ZERO
const WATER_ATLAS: Vector2i = Vector2i(1, 0)

func _ready() -> void:
	generate()

func generate() -> void:
	print("Started Ground Generation...")
	
	for y in range(height):
		for x in range(width):
			set_cell(Vector2i(x, y), 0, WATER_ATLAS if randf() > 0.5 else RUG_ATLAS)
	
	print("Finished Ground Generation.")
