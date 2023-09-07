extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		draw_line(Vector2(0,0), event.position, Color.BLACK)
		print("GotHere")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
