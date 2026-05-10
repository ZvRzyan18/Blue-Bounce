extends Button

signal hold_started
signal hold_ended

var is_holding := false

func _ready():
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)

func _on_button_down():
	is_holding = true
	hold_started.emit()

func _on_button_up():
	is_holding = false
	hold_ended.emit()
	get_viewport().gui_release_focus()

func _process(_delta : float):
	if is_holding:
		Events.left_hold.emit()
