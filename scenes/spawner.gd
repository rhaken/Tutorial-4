extends Node2D

@export var obstacle : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	repeat()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)
	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x
	
	spawned.global_position = spawn_pos
func repeat():
	spawn()
	await get_tree().create_timer(2).timeout
	repeat()
