extends CharacterBody2D

@export var speed = 150.0
@export var jump_speed = 9000.0
var ml : bool = false
var mr : bool = false
var mu : bool = false

var gravity : float = 98.1
var is_holding : bool = false

func move_left_down() -> void:
	velocity.x = 0.0
	ml = true

func move_left_up() -> void:
	ml = false

func move_right_down() -> void:
	velocity.x = 0.0
	mr = true

func move_right_up() -> void:
	mr = false
	
func move_up() -> void:
	velocity.x = 0.0
	mu = true
	
	
func _init() -> void:
	Events.left_down.connect(move_left_down)
	Events.left_up.connect(move_left_up)
	Events.right_down.connect(move_right_down)
	Events.right_up.connect(move_right_up)
	Events.jump_click.connect(move_up)

func _physics_process(delta : float) -> void:
	if ml :
		velocity.x -= speed * delta
		move_and_slide()
	if mr :
		velocity.x += speed * delta
		move_and_slide()
	if mu && is_on_floor() :
		velocity.y -= jump_speed * delta
		move_and_slide()
	elif !mu && !is_on_floor() :
		velocity.y += gravity * delta
		move_and_slide()
	
	mu = false
	
