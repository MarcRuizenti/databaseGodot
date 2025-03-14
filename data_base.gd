extends Node

var db:SQLite = null
# Called when the node enters the scene tree for the first time.
var db_path:String = "res://assets/db/tower_defenti.db"

func _ready() -> void:
	db = SQLite.new()
	db.path = db_path
	
	db.open_db()
	
func print_players ():
	db.query("SELECT * FROM players;")
	
	for player in db.query_result:
		prints(player.id_player, player.name)
		
func get_players ():
	db.query("SELECT * FROM players;")
	
	return db.query_result
	
func insert_player(player_name) -> int:
	var query:String = "INSERT INTO players (name, registered) VALUES('%s', datetime())" % player_name
	
	db.query(query)
	
	return db.last_insert_rowid
	
	
func insert_score(id_player:int, score:int ):
	var query:String = "INSERT INTO scores (score, datetime, id_player) VALUES (%d, datetime(), %d)" % [score, id_player]
	
	db.query(query)
	
	return db.last_insert_rowid

func get_scores():
	
	db.query("SELECT * FROM scores ORDER BY score DESC LIMIT 10;")
	return db.query_result


func get_player(id_player:int):
	db.query("SELECT * FROM players;")
	
	for player in db.query_result:
		if (player.id_player == id_player):
			return player
	
	return null
