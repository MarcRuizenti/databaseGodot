extends Control


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/select_player.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_leader_boards_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/dash_board.tscn")
