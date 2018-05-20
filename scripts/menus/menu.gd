extends Node

func _ready():
	pass


func _on_Timer_timeout():
	$Control/Button.show()


func _on_Button_pressed():
	change()

#todas as cenas vao ter essa func no final mandou bem
func change():
	general.goto_load_scene(general.PATH.choosemenu) #scene to go after load : general.PATH.choosemenu sacou? allright