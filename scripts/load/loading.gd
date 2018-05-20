extends CanvasLayer

var time = int(rand_range(10,15))



func _ready():
	troca_sprite()
	$films/Timer.wait_time = time
	$films/Timer.start()
	pass
	
func troca_sprite():
	randomize()
	var supergirls = int(rand_range(0,3))
	if supergirls == 0:
		$player/body/lindinha.texture = load("res://art/loading/lindinha.png")
	elif supergirls == 1:
		$player/body/lindinha.texture = load("res://art/loading/florzinha.png")
	else: 
		$player/body/lindinha.texture = load("res://art/loading/docinho.png")

func _on_Timer_timeout():
	$films/anim.play("fade")
	
#todas as cenas vao ter essa func no final
func change():
	general.goto_next_scene()
	pass
	