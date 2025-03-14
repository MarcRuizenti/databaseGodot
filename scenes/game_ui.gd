extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PlayerName.text = Globals.player_name
	Engine.time_scale = 1
	
func _process(delta: float) -> void:	
	$Enemy.text = "Enemis: " + str(Globals.player_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
