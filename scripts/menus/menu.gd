extends Node

func _on_Timer_timeout():
	$Control/Button.show()

func _on_Button_pressed():
	change()

func change():
	general.goto_load_scene(general.PATH.choosemenu)