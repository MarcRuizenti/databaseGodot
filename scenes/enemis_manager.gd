extends Node3D

@export var target:Node3D


var enemy_preload = preload("res://scenes/enemy.tscn")

var counter = 0

var time_dec:float = 0.25

var enemies_heath:float = 100.0

func _on_timer_timeout() -> void:
	var e = enemy_preload.instantiate()
	
	e.target = target
	
	e.health = enemies_heath
	add_child(e)

	counter += 1
	
	if counter % 2:
		enemies_heath += 5
		
	if counter % 4 == 0:
		var t = $Timer.wait_time
		t -= time_dec
		if t > 0:
			$Timer.wait_time -= 1
