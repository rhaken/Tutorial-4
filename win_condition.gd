extends Area2D

@export var sceneName = "level_2"
var my_scene = load("res://scenes/transisi.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_packed(my_scene)
		
