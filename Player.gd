extends CharacterBody2D

const SPEED = 500
const STOPPING_FACTOR = 20
var lock_velocity = false

var overlapping_areas = []

func _input(event):
	if event.is_action("interact", true) and event.pressed and overlapping_areas.size() > 0:
		var shortest_distance_area = overlapping_areas[0]
		for area in overlapping_areas:
			if area == shortest_distance_area:
				continue
			if global_position.distance_squared_to(area.global_position) < \
			global_position.distance_squared_to(shortest_distance_area.global_position):
				shortest_distance_area = area
		var node = shortest_distance_area.get_parent()
		if node.has_method("_interact"):
			set_process_input(false)
			node._interact()

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction and is_processing_input():
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, delta * SPEED * STOPPING_FACTOR)
	
	move_and_slide()

func _on_player_area_entered(area):
	overlapping_areas.append(area)

func _on_player_area_exited(area):
	overlapping_areas.erase(area)

func stop_interacting():
	set_process_input(true)

func lock_movement():
	lock_velocity = true

func unlock_movement():
	lock_velocity = false
