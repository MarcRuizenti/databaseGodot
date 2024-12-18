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
