extends Node2D

var enemy_preload = preload("res://scenes/enemy/enemy.tscn")

func _on_timer_timeout():
	var enemy = enemy_preload.instance()
	enemy.position = Vector2($spawn.global_position.x,rand_range(50,1030))
	get_parent().add_child(enemy)
