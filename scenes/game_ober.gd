extends Control


func _on_restart_pressed() -> void:
	Globals.player_score = Globals.base_score
	get_tree().reload_current_scene()
	
	
	


func _on_level_game_over() -> void:
	print("A")
	DataBase.insert_score(Globals.player_id, Globals.player_score)
	visible = true # Replace with function body.
	
	Engine.time_scale = 0


func _on_main_menu_pressed() -> void:
	Globals.player_score = Globals.base_score
	
	get_tree().change_scene_to_file("res://scenes/mian_menu.tscn")
	pass # Replace with function body.
