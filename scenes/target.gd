extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
signal target_reached



func _on_area_3d_body_entered(body: Node3D) -> void:
	if "health" not in body:
		return
	target_reached.emit()
