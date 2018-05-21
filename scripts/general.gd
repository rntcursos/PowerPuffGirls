extends Node

const PATH = {
	loading = "res://scenes/loading/loading.tscn",
	choosemenu = "res://scenes/choosemenu.tscn",
	menu = "res://scenes/menu.tscn"
}
func goto_next_scene():
	get_tree().change_scene(next_scene)

func goto_load_scene(sce):
	self.next_scene = sce
	get_tree().change_scene(PATH.loading)

var next_scene

var STATUS = {
	character = "Florzinha",
	vida = 100,
	power = 100,
	power_equiped = [],
	character_available = ["Florzinha", "Docinho", "Lindinha"],
	power_available = {
		Florzinha = ["punch", "megaPunch","laser"],
		Docinho = ["punch","megaPunch","hiperPunch"],
		Lindinha = ["punch","coldBreath","beauty"]
	},
}

const CHARACTER_SPECIFY = {
	Florzinha = {
		vida = 100,
		power = 120,
		power_available = ["punch", "megaPunch","laser"]
	},
	Docinho = {
		vida = 100,
		power = 50,
		power_available = ["punch","megaPunch","scream"]
	},
	Lindinha = {
		vida = 100,
		power = 100,
		power_available = ["punch","coldBreath","beauty"]
	}
}

const GROUPS = {
	player = "group_player",
	enemy = "group_enemy"
}

func set_character(val):
	STATUS.character = STATUS.character_available[val]

func set_power_equiped(p,s):
	STATUS.power_equiped.append(p)
	STATUS.power_equiped.append(s)

