extends KinematicBody2D

export (int) var move_speed = 900
var dir = Vector2()

var vida = 100
var can_die = false
var enemy

signal punch

func _ready():
	add_to_group(general.GROUPS.player)

func _physics_process(delta):
	movement()
	if Input.is_action_pressed("ui_select"):
		emit_signal("punch")


func _on_area_area_entered(area):
	if area.get_parent().has_method("player_nearby"):
		area.get_parent().player_nearby(self)
		if !is_connected("punch", self, "enemy_enter"):
			connect("punch", self, "enemy_enter")

func enemy_enter():
	if can_die:
		if enemy.has_method("destroy"):
			if !get_parent().empty_power(20):
				enemy.destroy()

func movement():
	dir = Vector2()
	if Input.is_action_pressed("ui_up"):
		dir.y = -1
	elif Input.is_action_pressed("ui_down"):
		dir.y = 1
	elif Input.is_action_pressed("ui_left"):
		dir.x = -1
	elif Input.is_action_pressed("ui_right"):
		dir.x = 1
	dir *= move_speed
	move_and_slide(dir)

#func set_power(power):
#	if STATUS.power != STATUS.powers_available[power]:
#		STATUS.power = STATUS.powers_available[power]

func dead():
	if general.STATUS.life <= 0:
		queue_free()


func hit(value):
	get_parent().hit(value)


func _on_punchArea_area_entered(area):
	can_die = true
	enemy = area.get_parent()
func _on_punchArea_area_exited(area):
	can_die = false
	enemy = area.get_parent()