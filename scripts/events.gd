extends Node

signal left_down()
signal left_up()
signal right_down()
signal right_up()
signal jump_click()
signal on_spicked()

func _init() -> void:
	left_down.emit()
	left_up.emit()
	right_down.emit()
	right_up.emit()
	jump_click.emit()
	on_spicked.emit()
