extends CanvasLayer

func _ready():
	var time = randi() % 5 + 10
	var val = randi() % 3
	print(time)
	change_sprite(val)
	$films/Timer.wait_time = time
	$films/Timer.start()
	
func change_sprite(_val):
	$player.change_sprite(_val)
	$food_spawn.set_val(_val)
	
func _on_Timer_timeout():
	$films/anim.play("fade")

func change_scene():
	general.goto_next_scene()