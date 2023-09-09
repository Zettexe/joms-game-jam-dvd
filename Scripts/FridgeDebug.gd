extends Sprite2D

func _on_dialogue_area_body_entered(body):
	modulate = Color.RED


func _on_dialogue_area_body_exited(body):
	modulate = Color(0.32, 0.38, 0.46)
