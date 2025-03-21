extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = "Congratulation Level " + str(Global.current_level) + " Clear"
	Global.current_level += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_2.tscn")
