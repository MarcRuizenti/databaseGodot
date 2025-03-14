extends Control

var player_button_preload = preload("res://scenes/player_button.tscn")
@onready var player_list = $HBoxContainer/SelectPlayer/List/ScrollPlayerList/PlayerList

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var scores = DataBase.get_scores()
	
	for score in scores:
		var p_b = player_button_preload.instantiate()
		
		var player = DataBase.get_player(score.id_player);
		
		var score_num:String = str(score.score) 
		p_b.set_player_name(player.name + ": " + score_num)
		
		player_list.add_child(p_b)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/mian_menu.tscn")
