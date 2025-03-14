extends Control

var player_button_preload = preload("res://scenes/player_button.tscn")

@onready var player_list = $HBoxContainer/SelectPlayer/List/ScrollPlayerList/PlayerList
@onready var input:LineEdit = $HBoxContainer/NewPlayer/Form/InputNewPlayer
@onready var res = $HBoxContainer/NewPlayer/Form/Res



func _ready() -> void:
	var players = DataBase.get_players()
	
	for player in players:
		var p_b = player_button_preload.instantiate()		
		p_b.set_player_name(player.name)
		p_b.set_player_id(player.id_player)
		
		p_b.pressed.connect(_on_player_button_pressed)
		
		player_list.add_child(p_b)


func _on_player_button_pressed(player_id:int, player_name:String) -> void:
	Globals.player_id = player_id
	Globals.player_name = player_name
	
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_button_add_player_pressed() -> void:
	if input.text.strip_edges() == "" or input.text.length() > 24:
		res.visible = true
		res.text = "Error"
		return
	
	res.visible = false
	print("Ok")
		
	Globals.player_id = DataBase.insert_player(input.text)
	Globals.player_name = input.text
	
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_button_button_down() -> void:
		get_tree().change_scene_to_file("res://scenes/mian_menu.tscn")
