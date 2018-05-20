extends Area2D

var mov = Vector2(-1,0)
var vel = 600

func _ready():
	troca_sprite()
	set_process(true)
	
	pass
func _process(delta):
	position += mov * vel * delta
	
	if position.x <= 0:
		print("free")
		queue_free()
	pass 

func troca_sprite():
	randomize()
	var candy = int(rand_range(0,3))
	if candy == 0:
		$cupcake.texture = load("res://art/loading/cupcake.png")
	elif candy == 1:
		$cupcake.texture = load("res://art/loading/sushi.png")
	else: 
		$cupcake.texture = load("res://art/loading/pizza.png")

func _on_doce_area_entered(area):
	if area.name == "body":
		queue_free()
