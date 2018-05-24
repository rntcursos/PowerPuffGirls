extends Node

func _on_Timer_timeout():
	$Control/Button.show()

func _on_Button_pressed():
	get_tree().change_scene(general.PATH.choosemenu)