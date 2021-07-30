extends Button

func _ready():
	pass

func _input(ev):
	if Input.is_key_pressed(KEY_P):
		get_parent().get_node("pausePopUp").show()
		get_tree().paused = true
