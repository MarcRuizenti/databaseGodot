extends Node3D

var toggle:bool = false

func look_at_traget(target:Vector3):
	$Torreta.look_at(target)
	$Torreta.rotation.x = 0


func _on_area_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if not toggle:
			$AnimationPlayer.play("Selected");
			$Torreta.visible = true
		else:
			$AnimationPlayer.play_backwards("Selected");
			$Torreta.visible = false
		toggle = !toggle
		
		
		
		
		
			

# Replace with function body.
