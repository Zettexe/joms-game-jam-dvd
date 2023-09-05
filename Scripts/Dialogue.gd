extends Panel

signal dialogue_done

var is_visible = false

var image_target_position = Vector2(960, 0)
var dialogue_opacity = Color.TRANSPARENT
var dialogue_content = ""
var dialogue_index = 0
var current_npc_name = Data.Character.NONE

const SPEED = 5

@onready var player_container = $PlayerContainer
@onready var npc_container = $NPCContainer
@onready var dialogue_container = $DialogueContainer
@onready var dialogue_content_node = $DialogueContainer/Dialogue/Content
@onready var dialogue_label_node = $DialogueContainer/Name/Label
@onready var npc_texture_node = $NPCContainer/NPCTexture

func _ready():
	player_container.position = -image_target_position
	npc_container.position = image_target_position
	dialogue_container.modulate = dialogue_opacity

func _input(event):
	if is_visible and event.is_action("interact", true) and event.pressed:
		if not dialogue_content_node.text == dialogue_content:
			dialogue_content_node.text = dialogue_content
			return
		
		var dialogue = Data.dialogue[current_npc_name][Data.current_cycle][Data.current_reputation]
		print(dialogue.size())
		if dialogue.size() - 1 > dialogue_index:
			dialogue_index += 1
			dialogue_content_node.text = ""
			dialogue_content = dialogue[dialogue_index]
			return
		
		emit_signal("dialogue_done")

func show_dialogue(npc_texture, npc_name):
	current_npc_name = npc_name
	dialogue_content = ""
	dialogue_label_node.text = Data.CHARACTER_NAMES[npc_name]
	dialogue_content_node.text = dialogue_content
	image_target_position = Vector2.ZERO
	dialogue_opacity = Color.WHITE
	npc_texture_node.texture = npc_texture
	await get_tree().create_timer(0.2).timeout
	is_visible = true
	dialogue_content = Data.dialogue[npc_name][Data.current_cycle][Data.current_reputation][0]
	
func hide_dialogue():
	is_visible = false
	image_target_position = Vector2(960, 0)
	dialogue_opacity = Color.TRANSPARENT
	dialogue_index = 0

func _process(delta):
	player_container.position = player_container.position.lerp(-image_target_position, delta * SPEED)
	npc_container.position = npc_container.position.lerp(image_target_position, delta * SPEED)
	dialogue_container.modulate = dialogue_container.modulate.lerp(dialogue_opacity, delta * SPEED * 5)
	
	var node_content = dialogue_content_node.text
	if node_content != dialogue_content and dialogue_content.length() > node_content.length():
		dialogue_content_node.text += dialogue_content[node_content.length()]
