extends Node

signal left_down()
signal left_up()
signal right_down()
signal right_up()
signal jump_click()
signal on_spicked()

var is_died : bool = false
var current_level : int = 1
signal on_level_changed()

signal popup_restart_dialog()
signal on_player_reset()

signal on_complete_level()

func _init() -> void:
	left_down.emit()
	left_up.emit()
	right_down.emit()
	right_up.emit()
	jump_click.emit()
	on_spicked.emit()
	popup_restart_dialog.emit()
	on_player_reset.emit()
	on_level_changed.emit()
	on_complete_level.emit()
