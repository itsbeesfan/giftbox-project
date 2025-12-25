extends Control

@onready var select = $AudioStreamPlayer
@onready var main_buttons: Control = $Buttons
@onready var settings : TextureRect = $Settings2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_buttons.visible = true
	settings.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	select.play()
	await select.finished
	get_tree().change_scene_to_file("res://scenes/areas/area_1.tscn")


func _on_quit_pressed() -> void:
	select.play()
	await select.finished
	get_tree().quit()


func _on_settings_pressed() -> void:
	select.play()
	main_buttons.visible = false
	settings.visible = true
	
