extends Button

func _ready():
	pass

func _input(ev):
	if Input.is_key_pressed(KEY_SPACE):
		get_parent().get_node("pausePopUp").hide()
		get_tree().paused = false