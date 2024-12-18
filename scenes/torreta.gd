extends Node3D

var bullet_preload = preload("res://scenes/bullet.tscn")

func _on_timer_timeout() -> void:
	print("v")
	var b = bullet_preload.instantiate()
	get_parent().add_child(b)
	
	b.global_rotation = global_rotation
