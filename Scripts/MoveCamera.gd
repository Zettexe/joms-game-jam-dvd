extends Camera2D

const SPEED = 10
var target_position = Vector2(0, 1050) # Vector2.ZERO

func _ready():
	position = target_position

func _process(delta):
	position = position.lerp(target_position, delta * SPEED)

func _on_kitchen_area_exited(area):
	target_position.y = 1050

func _on_other_area_exited(area):
	target_position.y = 0
