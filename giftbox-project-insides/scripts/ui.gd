extends CanvasLayer

@onready var settings_icon = $SettingsIcon
@onready var settings_panel = $Settings
@onready var dimmer = $ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	settings_panel.visible = false
	settings_icon.visible = true
	dimmer.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	open_settings()
	
func open_settings():
	settings_panel.visible = true
	settings_icon.visible = false
	dimmer.visible = true

func close_settings():
	settings_panel.visible = false
	settings_icon.visible = true
	dimmer.visible = false
