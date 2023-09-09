extends StaticBody2D

@export var npc_name: Data.Character
@export var npc_texture: Texture2D
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var dialogue_node = get_tree().get_first_node_in_group("Dialogue")

func _interact():
	npc_name = Data.Character.HORTENSIA
	print("Interacted with %s" % Data.CHARACTER_NAMES[npc_name])
	player.lock_movement()
	dialogue_node.show_dialogue(npc_texture, npc_name)
	await dialogue_node.dialogue_done
	print("Stopped interacting with %s" % name)
	player.unlock_movement()
	player.stop_interacting()
	dialogue_node.hide_dialogue()
