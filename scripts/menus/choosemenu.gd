extends Node

var choose1 = 0
var choose2 = 0
var choose3 = 0

func _ready():
	pass

func _on_Button_pressed():
	choose2 = 0
	choose3 = 0
	$control/Button2.icon = load("res://art/menuchoose/selectbutton.png")
	$control/Button3.icon = load("res://art/menuchoose/selectbutton.png")
	if choose1 == 0:
		choose1 += 1
		$control/Button.icon = load("res://art/menuchoose/selectbutton2.png")
		
	else:
		get_tree().change_scene("res://scenes/game.tscn")
	pass
	
func _on_Button2_pressed():
	choose1 = 0
	choose3 = 0
	$control/Button.icon = load("res://art/menuchoose/selectbutton.png")
	$control/Button3.icon = load("res://art/menuchoose/selectbutton.png")
	if choose2 == 0:
		choose2 += 1
		$control/Button2.icon = load("res://art/menuchoose/selectbutton2.png")
	
	else:
		get_tree().change_scene("res://scenes/game.tscn")
	pass
#ce tem algum scrpit jpa criado pra por no autoload? xxxxxxxxxxxxxxxxxxxxxxxxxxx
func _on_Button3_pressed():
	choose1 = 0
	choose2 = 0
	$control/Button.icon = load("res://art/menuchoose/selectbutton.png")
	$control/Button2.icon = load("res://art/menuchoose/selectbutton.png")
	if choose3 == 0:
		choose3 += 1
		$control/Button3.icon = load("res://art/menuchoose/selectbutton2.png")
		
	else:
		get_tree().change_scene("res://scenes/game.tscn")
	pass
