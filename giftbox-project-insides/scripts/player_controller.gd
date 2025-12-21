extends CharacterBody2D

@export var gravity := 300.0
@export var jump_force := 200.0
@export var move_speed := 150.0
@export var air_control := 0.75

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_force

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	var control = air_control if not is_on_floor() else 1.0
	
	velocity.x = lerp(velocity.x, direction * move_speed, control * 0.1)

	move_and_slide()
