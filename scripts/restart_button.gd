extends Button

func _init() -> void:
	self.pressed.connect(_on_pressed_btn)
	
func _on_pressed_btn() -> void:
	Events.is_died = false
	var parent = get_parent() as Panel
	parent.visible = false
	Events.on_player_reset.emit()
