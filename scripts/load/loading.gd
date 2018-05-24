extends CanvasLayer

var po

func _ready():
#	var time = randi() % 5 + 10
#	var val = randi() % 3
	change_sprite(randi() % 3)
	$films/Timer.wait_time = (randi() % 10 + 3)
	$films/Timer.start()

func change_sprite(_val):
	$player.change_sprite(_val)
	$food_spawn.set_val(_val)

func _on_Timer_timeout():
	$films/anim.play("fade")

func change_scene():
	general.goto_next_scene()

func point():
	#func de pontuar
	pass