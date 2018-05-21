extends Area2D

var mov = Vector2(-1,0)
var speed = 600

func _process(delta):
	position += mov * speed * delta
	
	if position.x <= -10:
		queue_free()

func change_sprite(candy):
	if candy == 0:
		$cupcake.texture = load("res://art/loading/cupcake.png")
	elif candy == 1:
		$cupcake.texture = load("res://art/loading/sushi.png")
	elif candy == 2: 
		$cupcake.texture = load("res://art/loading/pizza.png")

func _on_doce_area_entered(area):
	if area.name == "body":
		queue_free()
