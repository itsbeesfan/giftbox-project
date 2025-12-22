extends Node2D

@onready var note_window = $note_window
@onready var note_text = $note_window/Panel/RichTextLabel

var current_note = null
var reading := false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$note_window.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("open"):
		print("PRESIONASTE EEEE EPAAA")
		if reading:
			close_note()
		elif current_note:
			open_note(current_note)
			
func open_note(note):
	reading = true
	note_window.visible = true
	note_text.text = note.message
	
	var player = get_tree().get_first_node_in_group("player")
	if player:
		player.can_move = false
	
func close_note():
	reading = false
	note_window.visible = false
	
	var player = get_tree().get_first_node_in_group("player")
	if player:
		player.can_move = true
