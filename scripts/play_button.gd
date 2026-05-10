extends Button

func __onclick() -> void :
	get_tree().change_scene_to_file("res://controller.tscn")
	
func _init() -> void:
	self.pressed.connect(__onclick)
