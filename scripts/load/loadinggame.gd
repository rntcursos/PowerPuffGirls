extends Node2D

var mov = Vector2()
var vel = 30

func _ready():
	set_process(true)
	pass

func _process(delta):
	
	if Input.is_action_pressed("ui_right"):
		mov.x += 1
	if Input.is_action_pressed("ui_left"):
		mov.x += -1
	if Input.is_action_pressed("ui_up"):
		mov.y += -1
	if Input.is_action_pressed("ui_down"):
		mov.y += 1
		
	position += mov * vel * delta
	
	if position.x >= 1900:
		position.x = 1880
		
	if position.x <= 120:
		position.x = 120
	
	if position.y >= 1000:
		position.y = 1000
	
	if position.y <= 80:
		position.y = 80

