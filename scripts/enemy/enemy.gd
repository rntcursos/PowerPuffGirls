extends Node2D

var dir = Vector2()
var speed = 500
var player_pos = 0

func _process(delta):
	dir.y = player_pos * delta
	dir.x = -1*speed*delta
	position += dir
	if position.x <= -20:
		queue_free()
		
func player_nearby(p):
	self.player_pos = p.position.y - position.y
	speed += 200

func destroy():
	queue_free()

func _on_enemy_body_entered(body):
	print(body.get_parent_class())
	pass