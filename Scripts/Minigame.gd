extends Panel

signal minigame_done

const SPEED = 5

var instructions_target_position = Vector2(960, 200)
var is_visible = false
var minigame_opacity = Color.TRANSPARENT
var minigame_self_opacity = Color.WHITE
var minigame_instructions = ""
var current_minigame = Data.Character.NONE

@onready var player_container = $PlayerContainer
@onready var minigame_container = $MinigameContainer
@onready var minigame_content_node = $MinigameContainer/Instructions/Content
@onready var minigame_label_node = $MinigameContainer/Title/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	minigame_container.modulate = minigame_opacity

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	minigame_container.modulate = minigame_container.modulate.lerp(minigame_opacity, delta * SPEED * 5)
	minigame_container.self_modulate = minigame_container.self_modulate.lerp(minigame_self_opacity, delta * SPEED * 5)
func _input(event):
	
	if is_visible and event.is_action("interact", true) and event.pressed:
			
		emit_signal("minigame_done")
	
func show_minigame(minigame_name):
	minigame_instructions = ""
	minigame_label_node.text = Data.minigame_name_pretty[minigame_name]
	minigame_opacity = Color.WHITE
	minigame_self_opacity = Color.WHITE
	await get_tree().create_timer(0.2).timeout
	is_visible = true
	minigame_instructions = Data.instructions[minigame_name]
	minigame_content_node.text = minigame_instructions
	

func hide_minigame():
	is_visible = false
	minigame_opacity = Color.TRANSPARENT
	minigame_self_opacity = Color.TRANSPARENT
	
