extends CollisionShape2D

@export var minigame_name: Data.Minigame
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var minigame_node = get_tree().get_first_node_in_group("Minigame")

func _interact():
	print("Interacted with %s" % name)
	player.lock_movement()
	#minigame_node.show_minigame(minigame_name)
	#await minigame_node.minigame_done
	#print("Stopped interacting with %s" % name)
	if Data.current_reputation > -3:
		Data.current_reputation -= 1
	print(Data.current_reputation)
	
	player.unlock_movement()
	player.stop_interacting()
	minigame_node.hide_minigame()
