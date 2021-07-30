extends Area2D

var direction = Vector2(0,0)
var SPEED = 11
onready var walls = get_parent().get_node("Navigation2D/walls")

func _ready():
	$AnimatedSprite.play("moving")
	position = walls.get_player_init_pos()
	set_process(false)
	get_parent().get_node("quiz").hide()
	get_parent().get_node("quizZone").hide()
	get_parent().get_node("quizBackground").hide()
	get_parent().get_node("gameover").hide()
	get_parent().get_node("restartButton").hide()
	get_parent().get_node("Navigation2D/walls/youwin").hide()
	get_parent().get_node("Navigation2D/walls/restartButton2").hide()
	get_parent().get_node("wrongAnswer").hide()
	get_parent().get_node("quizZone2").hide()
	get_parent().get_node("quiz2").hide()
	get_parent().get_node("quizBackground2").hide()
	get_parent().get_node("quiz3").hide()
	get_parent().get_node("quizBackground3").hide()
	get_parent().get_node("quizZone3").hide()
	get_parent().get_node("quizZone4").hide()
	get_parent().get_node("quiz4").hide()
	get_parent().get_node("quizBackground4").hide()
	get_parent().get_node("quiz5").hide()
	get_parent().get_node("quizBackground5").hide()
	get_parent().get_node("quizZone5").hide()
	get_parent().get_node("quiz6").hide()
	get_parent().get_node("quizBackground6").hide()
	get_parent().get_node("quizZone6").hide()
	get_parent().get_node("pausePopUp").hide()
	get_parent().get_node("homepage").show()
	get_parent().get_node("rules").hide()
	get_parent().get_node("controls").hide()
	get_parent().get_node("backButton").hide()
	get_parent().get_node("right").hide()
	get_parent().get_node("left").hide()
	get_parent().get_node("up").hide()
	get_parent().get_node("down").hide()

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		direction = Vector2(0,-1)
		rotation = deg2rad(-90)
	elif Input.is_action_pressed("ui_down"):
		direction = Vector2(0,1)
		rotation = deg2rad(90)
	elif Input.is_action_pressed("ui_left"):
		direction = Vector2(-1,0)
		rotation = deg2rad(180)
	elif Input.is_action_pressed("ui_right"):
		direction = Vector2(1,0)
		rotation = deg2rad(0)
	
	var pos_to_move = walls.is_tile_vacant(position, direction)
	if (direction != Vector2(0,0)):
		position = position.linear_interpolate(pos_to_move, SPEED * delta)
		walls.eat(position)
		
func _on_Pacman_area_entered(area):
	if(area.name == "quizZone"):
		get_tree().paused = true
		get_parent().get_node("quiz").show()
		get_parent().get_node("quizBackground").show()
		get_parent().get_node("quizZone").queue_free()

func _on_trueButton_pressed():
		get_tree().paused = false
		get_parent().get_node("quiz").hide() 
		get_parent().get_node("quizBackground").hide()

func _on_falseButton_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz").hide() 
	get_parent().get_node("quizBackground").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_quizZone2_area_entered(area):
	if(area.name == "Pacman"):
		get_tree().paused = true
		get_parent().get_node("quiz2").show()
		get_parent().get_node("quizBackground2").show()
		get_parent().get_node("quizZone2").queue_free()

func _on_trueButton2_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz2").hide() 
	get_parent().get_node("quizBackground2").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_falseButton2_pressed():
	get_tree().paused = false
	get_parent().get_node("quiz2").hide() 
	get_parent().get_node("quizBackground2").hide()

func _on_quizZone3_area_entered(area):
	if(area.name == "Pacman"):
		get_tree().paused = true
		get_parent().get_node("quiz3").show()
		get_parent().get_node("quizBackground3").show()
		get_parent().get_node("quizZone3").queue_free()

func _on_trueButton3_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz3").hide() 
	get_parent().get_node("quizBackground3").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_falseButton3_pressed():
	get_tree().paused = false
	get_parent().get_node("quiz3").hide() 
	get_parent().get_node("quizBackground3").hide()

func _on_quizZone4_area_entered(area):
	if(area.name == "Pacman"):
		get_tree().paused = true
		get_parent().get_node("quiz4").show()
		get_parent().get_node("quizBackground4").show()
		get_parent().get_node("quizZone4").queue_free()

func _on_trueButton4_pressed():
	get_tree().paused = false
	get_parent().get_node("quiz4").hide() 
	get_parent().get_node("quizBackground4").hide()

func _on_falseButton4_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz4").hide() 
	get_parent().get_node("quizBackground4").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_quizZone5_area_entered(area):
	if(area.name == "Pacman"):
		get_tree().paused = true
		get_parent().get_node("quiz5").show()
		get_parent().get_node("quizBackground5").show()
		get_parent().get_node("quizZone5").queue_free()

func _on_trueButton5_pressed():
	get_tree().paused = false
	get_parent().get_node("quiz5").hide() 
	get_parent().get_node("quizBackground5").hide()

func _on_falseButton5_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz5").hide() 
	get_parent().get_node("quizBackground5").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_quizZone6_area_entered(area):
	if(area.name == "Pacman"):
		get_tree().paused = true
		get_parent().get_node("quiz6").show()
		get_parent().get_node("quizBackground6").show()
		get_parent().get_node("quizZone6").queue_free()

func _on_trueButton6_pressed():
	get_parent().get_node("gameover").show()
	get_parent().get_node("restartButton").show()
	get_parent().get_node("quiz6").hide() 
	get_parent().get_node("quizBackground6").hide()
	get_parent().get_node("wrongAnswer").show()

func _on_falseButton6_pressed():
	get_tree().paused = false
	get_parent().get_node("quiz6").hide() 
	get_parent().get_node("quizBackground6").hide()

func _on_pauseButton_pressed():
	get_tree().paused = true
	get_parent().get_node("pausePopUp").show()

func _on_playButton_pressed():
	get_tree().paused = false
	get_parent().get_node("pausePopUp").hide()

func _on_startButton_pressed():
	set_process(true)
	get_parent().get_node("startButton").hide()
	get_parent().get_node("rulesButton").hide()
	get_parent().get_node("controlsButton2").hide()
	get_parent().get_node("homepage").hide()

func _on_rulesButton_pressed():
	get_parent().get_node("startButton").hide()
	get_parent().get_node("rulesButton").hide()
	get_parent().get_node("controlsButton2").hide()
	get_parent().get_node("homepage").hide()
	get_parent().get_node("rules").show()
	get_parent().get_node("backButton").show()

func _on_controlsButton2_pressed():
	get_parent().get_node("startButton").hide()
	get_parent().get_node("rulesButton").hide()
	get_parent().get_node("controlsButton2").hide()
	get_parent().get_node("homepage").hide()
	get_parent().get_node("controls").show()
	get_parent().get_node("backButton").show()
	get_parent().get_node("right").show()

func _on_backButton_pressed():
	get_tree().reload_current_scene()

func _on_rightButton_pressed():
	get_parent().get_node("right").show()
	get_parent().get_node("left").hide()
	get_parent().get_node("up").hide()
	get_parent().get_node("down").hide()

func _on_leftButton_pressed():
	get_parent().get_node("left").show()
	get_parent().get_node("right").hide()
	get_parent().get_node("up").hide()
	get_parent().get_node("down").hide()

func _on_upButton_pressed():
	get_parent().get_node("left").hide()
	get_parent().get_node("right").hide()
	get_parent().get_node("up").show()
	get_parent().get_node("down").hide()

func _on_downButton_pressed():
	get_parent().get_node("down").show()
	get_parent().get_node("up").hide()
	get_parent().get_node("right").hide()
	get_parent().get_node("left").hide()
