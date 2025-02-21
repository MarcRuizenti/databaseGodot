extends Node3D

signal game_over

func _on_target_target_reached() -> void:
	game_over.emit()
