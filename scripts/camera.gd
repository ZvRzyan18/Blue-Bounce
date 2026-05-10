extends Camera2D

var player : CharacterBody2D = null

func _init() -> void:
	player = get_parent()

func _process(_delta: float) -> void:
	if player != null :
		self.position.x = player.get_position_delta().x + get_viewport_rect().size.x
		self.position.y = player.get_position_delta().y + get_viewport_rect().size.y
