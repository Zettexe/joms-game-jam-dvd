extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("studio_fade")
	await get_tree().create_timer(5).timeout
	$AnimationPlayer.play_backwards("studio_fade")
	await get_tree().create_timer(3).timeout
	
	$ctrlz.position = Vector2(1800, 0)
	$AnimationPlayer.play("studio_fade")
	await get_tree().create_timer(3).timeout
	$AnimationPlayer.play_backwards("studio_fade")
	await get_tree().create_timer(3).timeout
	
	$title_screen.position = Vector2(1800, 0)
	$AnimationPlayer.play("studio_fade")
	await get_tree().create_timer(2).timeout
	
	$AnimationPlayer.play("one_to_two_text")
	await get_tree().create_timer(20).timeout
	$AnimationPlayer.play_backwards("studio_fade")
	
	await get_tree().create_timer(3).timeout
	
	get_tree().change_scene_to_file("res://testscene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
