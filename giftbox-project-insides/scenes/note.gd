extends Area2D

@export_multiline var message :="piensa en un mensaje re abstracto que decidiras luego, sisi."

var player_near := false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("TE ACERCASTE SIIIIII")
		var main = get_tree().get_first_node_in_group("main").current_note
		if main:
			main.current_note = self

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		var main = get_tree().get_first_node_in_group("main").current_note
		if main:
			main.current_note = null
