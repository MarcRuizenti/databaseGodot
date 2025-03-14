extends Node3D

@export var enemies_manager:Node3D

@export var DIST_MAX:int = 20

func _process(delta: float) -> void:
	for turret in get_children():
		var shooting:bool = false
		for enemy in enemies_manager.get_children():
			if enemy is not CharacterBody3D:
				continue

			var dist = turret.global_position.distance_to(enemy.global_position)
			if dist <= DIST_MAX and turret.get_node("Torreta").enabled:
				turret.look_at_traget(enemy)

				turret.get_node("Torreta").start_shooting()
				shooting = true

		if not shooting:
			turret.get_node("Torreta").stop_shooting()
