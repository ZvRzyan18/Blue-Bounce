extends Panel

func _init() -> void:
	Events.popup_restart_dialog.connect(on_show)

func on_show() -> void:
	self.visible = true
