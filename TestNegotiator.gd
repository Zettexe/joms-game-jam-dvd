extends StaticBody2D

signal interaction_done
var interacting = false

func _interact(player):
	print("Interacted with TestNegotiator")
	player.lock_movement()
	
	interacting = true
	await interaction_done
	interacting = false
	
	player.unlock_movement()

var timer = 0
func _process(delta):
	if not interacting:
		return
	
	print(timer)
	timer += 1
	if timer >= 500:
		emit_signal("interaction_done")
