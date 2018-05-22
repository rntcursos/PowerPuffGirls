extends Node

var player_preload = preload("res://scenes/character/player.tscn")


func _ready():
	randomize()
	spawn_player()

func spawn_player():
	var player = player_preload.instance()
	player.position = $spawn.position
	add_child(player)

func empty_life(val):
	if general.STATUS.vida <= 0:
		return false
	general.STATUS.vida -= val
	$Control/life.scale = Vector2(float(general.STATUS.vida)/100, 1)

func empty_power(val):
	if general.STATUS.power <= 0:
		return true
	general.STATUS.power -= val
	$Control/energy.scale = Vector2(float(general.STATUS.power)/100, 1)