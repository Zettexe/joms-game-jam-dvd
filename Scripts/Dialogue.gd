extends Panel

var image_target_position = Vector2(960, 0)
var dialogue_target_position = Vector2(0, 400)

const SPEED = 5

@onready var player_container = $PlayerContainer
@onready var npc_container = $NPCContainer
@onready var dialogue_container = $DialogueContainer
@onready var npc_texture_node = $NPCContainer/NPCTexture

func _ready():
	player_container.position = -image_target_position
	npc_container.position = image_target_position
	dialogue_container.position = dialogue_target_position

func show_dialogue(npc_texture):
	image_target_position = Vector2.ZERO
	dialogue_target_position = Vector2.ZERO
	npc_texture_node.texture = npc_texture
	
func hide_dialogue():
	image_target_position = Vector2(960, 0)
	dialogue_target_position = Vector2(0, 400)

func _process(delta):
	player_container.position = player_container.position.lerp(-image_target_position, delta * SPEED)
	npc_container.position = npc_container.position.lerp(image_target_position, delta * SPEED)
	dialogue_container.position = dialogue_container.position.lerp(dialogue_target_position, delta * SPEED)
