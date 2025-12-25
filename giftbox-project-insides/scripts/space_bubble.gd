extends Area2D

@export var amplitude := 48.0 #mess around with this >:p
@export var speed := 1.0 #also mess around with ts
@export var direction := Vector2(1, 0)
@export var knockback := 400.0 #ALSO mess with this

@onready var boing = $BoingSFX

var start_position: Vector2
var time := 0.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_position = global_position
	direction = direction.normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta
	var offset = sin(time * speed) * amplitude
	global_position = start_position + direction * offset


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if not boing.playing:
			boing.play()
		var push_dir = (body.global_position - global_position).normalized()
		body.velocity += push_dir * knockback
