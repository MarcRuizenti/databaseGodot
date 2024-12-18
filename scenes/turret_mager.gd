extends Node3D

@export var enemies_manager:Node3D

@export var DIST_MAX:int = 20

func _process(delta: float) -> void:
	for turet in get_children():
		for enemy in enemies_manager.get_children():
			if enemy is not CharacterBody3D:
				continue
			var dist = turet.global_position.distance_to(enemy.global_position)
			if dist <= DIST_MAX:
				turet.look_at_traget(enemy.global_position)
