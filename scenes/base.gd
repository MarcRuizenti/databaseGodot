extends Node3D

var toggle:bool = false
var turret_price:float =  5

func look_at_traget(target:Node3D):
	var traget_pos:Vector3 = target.global_position
	
	$Torreta.look_at_enemy(traget_pos)
	$Torreta.rotation.x = 0


func _on_area_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if not toggle:
			if Globals.player_score < turret_price:
				return
				
			Globals.player_score -= turret_price
			$Torreta.visible = true
			$Torreta.enabled = true
			
		toggle = !toggle
		
		
		
		
		
			

# Replace with function body.
