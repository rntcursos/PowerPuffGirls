extends Node

func _input(event):
	if $control/Button.is_hovered():
		$control/Button.icon = load("res://art/menuchoose/selectbutton2.png")
	else:
		$control/Button.icon = load("res://art/menuchoose/selectbutton.png")
	if $control/Button2.is_hovered():
		$control/Button2.icon = load("res://art/menuchoose/selectbutton2.png")
	else:
		$control/Button2.icon = load("res://art/menuchoose/selectbutton.png")
	if $control/Button3.is_hovered():
		$control/Button3.icon = load("res://art/menuchoose/selectbutton2.png")
	else:
		$control/Button3.icon = load("res://art/menuchoose/selectbutton.png")

func _on_Button_pressed():
	general.goto_load_scene(general.PATH.game)
	general.set_character(0)

func _on_Button2_pressed():
	general.goto_load_scene(general.PATH.game)
	general.set_character(1)

func _on_Button3_pressed():
	general.goto_load_scene(general.PATH.game)
	general.set_character(2)
