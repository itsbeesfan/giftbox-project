extends Area2D

@export var message := "aaaaa."



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("TE ACERCASTE SIIIIII")
		var main = get_parent()
		main.current_note = self


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		var main = get_parent()
		main.current_note = null
