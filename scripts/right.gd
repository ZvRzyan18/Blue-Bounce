extends Button


func _ready():
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)

func _on_button_down():
	Events.right_down.emit()

func _on_button_up():
	Events.right_up.emit()
	get_viewport().gui_release_focus()
