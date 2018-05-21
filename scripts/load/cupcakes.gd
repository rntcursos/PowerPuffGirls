extends Node2D

const pre_doce = preload("res://scenes/loading/doce.tscn")
var val

func _ready():
	$Timer.wait_time = randf() + 1
	$Timer.start()

func _on_Timer_timeout():
	spaw()

func spaw():
	var doce = pre_doce.instance()
	doce.change_sprite(val)
	doce.global_position = Vector2(1920, randi() % 1000 + 80)
	add_child(doce)

func set_val(_val):
	self.val = _val