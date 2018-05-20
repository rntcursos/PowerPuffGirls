extends Area2D


func _on_power_up_body_entered(body):
	power_up(body)

func power_up(body):
	if body.is_in_group(general.GROUPS.player):
		print("general power")
