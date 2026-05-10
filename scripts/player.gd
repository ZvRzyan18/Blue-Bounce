extends CharacterBody2D

@export var speed = 150.0
@export var jump_speed = 9000.0
var ml : bool = false
var mr : bool = false
var mu : bool = false

var gravity : float = 98.1


func move_left() -> void:
	velocity.x = 0.0
	ml = true

func move_right() -> void:
	velocity.x = 0.0
	mr = true
	
func move_up() -> void:
	mu = true
	
	
func _init() -> void:
	Events.left_hold.connect(move_left)
	Events.right_hold.connect(move_right)
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
	ml = false
	mr = false
	mu = false
