extends KinematicBody2D

var mov

func _process(delta):
	mov = Vector2()
	if Input.is_action_pressed("ui_right"):
		mov.x = 1
	if Input.is_action_pressed("ui_left"):
		mov.x = -1
	if Input.is_action_pressed("ui_up"):
		mov.y = -1
	if Input.is_action_pressed("ui_down"):
		mov.y = 1
	mov *= 50
	move_and_slide(mov)

func change_sprite(_val):
	if _val == 0:
		$sprite.texture = load("res://art/loading/lindinha.png")
	elif _val == 1:
		$sprite.texture = load("res://art/loading/florzinha.png")
	elif _val == 2: 
		$sprite.texture = load("res://art/loading/docinho.png")