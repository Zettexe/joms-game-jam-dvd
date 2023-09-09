extends Camera2D

const SPEED = 10
var target_position = Vector2(0, 640) # Vector2.ZERO
var target_opacity = Color.WHITE

@onready var negotiation_wall = get_tree().get_first_node_in_group("NegotiationWall")

func _ready():
	position = target_position

func _process(delta):
	position = position.lerp(target_position, delta * SPEED)
	negotiation_wall.self_modulate = negotiation_wall.self_modulate.lerp(target_opacity, delta * SPEED)

func _on_kitchen_area_exited(area):
	target_position.y = 640
	target_opacity = Color.WHITE

func _on_other_area_exited(area):
	target_position.y = 0
	target_opacity = Color.TRANSPARENT
