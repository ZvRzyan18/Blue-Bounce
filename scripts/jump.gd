extends Button

func clicked_jump() -> void:
	Events.jump_click.emit()
	get_viewport().gui_release_focus()

func _ready() -> void:
	self.pressed.connect(clicked_jump)
