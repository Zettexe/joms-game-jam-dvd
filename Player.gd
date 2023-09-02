extends CharacterBody2D

const SPEED = 500
const STOPPING_FACTOR = 20

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, delta * SPEED * STOPPING_FACTOR)
	
	move_and_slide()
