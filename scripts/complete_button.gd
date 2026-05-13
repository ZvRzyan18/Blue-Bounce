extends Button

func _init() -> void:
	self.pressed.connect(_on_pressed_btn)
	
func _on_pressed_btn() -> void:
	get_tree().change_scene_to_file("res://intro.tscn")
