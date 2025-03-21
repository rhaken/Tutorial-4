extends Area2D
@export var sceneName = "LoseScreen"

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		var current_scene = get_tree().get_current_scene().get_name()
		if body.get_name() == "Player":
			Global.lives -=1
			if (Global.lives == 0):
				get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
			else:
				if(current_scene == "main"):
					get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + "Level1" + ".tscn")))
				else:
					get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + "Level_2" + ".tscn")))
