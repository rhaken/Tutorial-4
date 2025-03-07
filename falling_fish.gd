extends RigidBody2D

@onready var next_scene = preload("res://scenes/LoseScreen.tscn")

func _on_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_packed(next_scene)
	else:
		body.queue_free()
