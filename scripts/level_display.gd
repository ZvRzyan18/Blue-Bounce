extends Label


func on_level() -> void:
	self.text = "Level : " + str(Events.current_level)

func _init() -> void:
	Events.on_level_changed.connect(on_level)
