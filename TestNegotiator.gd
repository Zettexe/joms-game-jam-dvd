extends StaticBody2D

signal interaction_done

@export var npc_texture: Texture2D
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var dialogue_node = get_tree().get_first_node_in_group("Dialogue")

func _interact():
	print("Interacted with %s" % name)
	player.lock_movement()
	dialogue_node.show_dialogue(npc_texture)
	await interaction_done
	print("Stopped interacting with %s" % name)
	player.unlock_movement()
	player.stop_interacting()
	dialogue_node.hide_dialogue()

func _input(event):
	if player.is_processing_input():
		return
	
	if event.is_action("interact", true) and event.pressed:
		emit_signal("interaction_done")

func _process(delta):
	if player.is_processing_input():
		return
