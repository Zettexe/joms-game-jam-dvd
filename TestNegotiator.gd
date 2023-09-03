extends StaticBody2D

signal interaction_done

@export var npc_texture: Texture2D
@onready var player = get_tree().get_first_node_in_group("Player")

func _interact():
	print("Interacted with TestNegotiator")
	player.lock_movement()
	await interaction_done
	print("Stopped interacting with TestNegotiator")
	player.unlock_movement()
	player.stop_interacting()

func _input(event):
	if player.is_processing_input():
		return
	
	if event.is_action("interact", true) and event.pressed:
		emit_signal("interaction_done")

func _process(delta):
	if player.is_processing_input():
		return
