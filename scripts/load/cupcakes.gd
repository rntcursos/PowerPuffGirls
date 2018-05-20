extends Node2D


const pre_doce = preload("res://art/loading/doce.tscn")

func _ready():
	randomize()
	$Timer.wait_time = int(rand_range(1,2))
	$Timer.start()
	pass

func _on_Timer_timeout():
	spaw()

func spaw():
	var doce = pre_doce.instance()
	doce.global_position = Vector2(1920, int(rand_range(80,1000)))
	add_child(doce)
	