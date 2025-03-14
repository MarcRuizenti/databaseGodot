extends Node3D


var SPEED:float = 100.0

var damage:float = 50.0


func _process(delta: float) -> void:
	
	translate(Vector3.FORWARD*SPEED*delta)


func _on_area_3d_body_entered(body: Node3D) -> void:
	if "health" not in body:
		return

	body.health -= damage

	if body.health > 0:
		queue_free()
		return

	Globals.player_score += 1
	body.queue_free()
	queue_free()
