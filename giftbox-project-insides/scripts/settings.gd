extends TextureRect

@export_enum("menu", "game") var context := "menu"


@onready var sfx = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	sfx.play()
	
	if context == "menu":
		get_tree().change_scene_to_file("res://scenes/start_screen.tscn")
	else:
		get_parent().close_settings()
