extends Node

var player
var player_character = general.get_character()
const CHARACTERS = {
	lindinha = preload("res://scenes/character/Lindinha.tscn"),
	florzinha = preload("res://scenes/character/Florzinha.tscn"),
	docinho = preload("res://scenes/character/Docinho.tscn")
}

func _ready():
	randomize()
	spawn_player()

func spawn_player():
	player_character = 0 #teste
	if player_character == 0:
		player = CHARACTERS.lindinha.instance()
	elif player_character == 1:
		player = CHARACTERS.florzinha.instance()
	elif player_character == 2:
		player = CHARACTERS.docinho.instance()
	player.position = $spawn.position
	add_child(player)

func damage(_life):
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