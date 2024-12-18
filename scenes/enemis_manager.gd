extends Node3D

@export var target:Node3D

var enemy_preload = preload("res://scenes/enemy.tscn")


func _on_timer_timeout() -> void:
	
	var e = enemy_preload.instantiate()
	
	e.target = target
	
	add_child(e)
	
