extends Control

signal pressed(player_id, player_name)

var player_id:int = 0
var player_name:String = ""

func set_player_name(text:String):
	$Button.text = text
	player_name = text
	
func set_player_id(num:int):
	player_id = num


func _on_button_pressed() -> void:
	pressed.emit(player_id, player_name)
