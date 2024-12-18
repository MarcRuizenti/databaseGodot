extends Node3D


var SPEED:float = 100.0

func _process(delta: float) -> void:
	translate(Vector3.FORWARD * SPEED * delta)


func _on_area_3d_body_entered(body: Node3D) -> void:
	body.queue_free()
	queue_free()
