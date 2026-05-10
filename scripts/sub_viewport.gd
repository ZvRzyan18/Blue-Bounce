extends SubViewport

func _init() -> void:
	Events.on_complete_level.connect(complete_level)

func complete_level() -> void:
	if Events.current_level == 1:
		var child = get_child(0)
		#remove_child(child)
		call_deferred("remove_child", child)
		child.call_deferred("queue_free")
		child = preload("res://level2.tscn").instantiate()
		add_child(child)
		
		Events.current_level = Events.current_level + 1
		Events.on_level_changed.emit()
