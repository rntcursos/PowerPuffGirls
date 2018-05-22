extends Area2D

var mov = Vector2(-1,0)
var speed = 600

func _process(delta):
	position += mov * speed * delta
	
	if position.x <= -($sprite.texture.get_size().x)/2:
		queue_free()

func change_sprite(candy):
	if candy == 0:
		$sprite.texture = load("res://art/loading/cupcake.png")
	elif candy == 1:
		$sprite.texture = load("res://art/loading/sushi.png")
	elif candy == 2: 
		$sprite.texture = load("res://art/loading/pizza.png")

func _on_doce_body_entered(body):
		if body.name == "player":
			get_parent().point()
			queue_free()
