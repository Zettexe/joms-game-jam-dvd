extends Panel

@onready var npc_texture_node = $NPCTexture

func show_dialogue(npc_texture):
	npc_texture_node.texture = npc_texture
	visible = true
	
func hide_dialogue():
	visible = false
