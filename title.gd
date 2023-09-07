extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("hit title screen!")
	$AnimationPlayer.play("title_screen")
	await get_tree().create_timer(5).timeout
	$AnimationPlayer.play_backwards("title_screen")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://testscene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
