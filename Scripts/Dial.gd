extends Node2D

@onready var dial_node = $Dial

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func update_dial():
	dial_node.rotate(0.785)
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		Data.current_reputation += 1
		dial_node.rotate(0.785)
		if Data.current_reputation > 3:
			dial_node.rotate(0.785)
			Data.current_reputation = -3
		print(Data.current_reputation)
		
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
