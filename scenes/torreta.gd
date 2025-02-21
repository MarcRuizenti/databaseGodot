extends Node3D

var bullet_preload = preload("res://scenes/bullet.tscn")

var is_shooting:bool = false

var enabled:bool = false

func look_at_enemy(enemy_pos:Vector3):
	look_at(enemy_pos)


func shoot():
	var b = bullet_preload.instantiate()
	get_parent().add_child(b)
	b.global_rotation = global_rotation


func start_shooting():
	if is_shooting:
		return

	is_shooting = true
	
	shoot()
	$Timer.start()

func stop_shooting():
	is_shooting = false
	$Timer.stop()

func _on_timer_timeout() -> void:
	shoot()
	$Timer.start()
	
