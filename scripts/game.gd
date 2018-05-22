extends Node

var player_preload = preload("res://scenes/character/player.tscn")
var player

func _ready():
	randomize()
	spawn_player()

func spawn_player():
	player = player_preload.instance()
	player.position = $player_spaw.position
	add_child(player)

func hit(_life):
	$control/life.scale = Vector2(float(_life)/100, 1)
	if _life == 0:
		game_over()

func game_over():
	print("game over")
#func empty_life(val):
#	if general.STATUS.vida <= 0:
#		return false
#	general.STATUS.vida -= val
#	$Control/life.scale = Vector2(float(general.STATUS.vida)/100, 1)
#
#func empty_power(val):
#	if general.STATUS.power <= 0:
#		return true
#	general.STATUS.power -= val
#	$Control/energy.scale = Vector2(float(general.STATUS.power)/100, 1)