extends Node

@onready var my_button: Button = $Button 

func _ready() -> void:
	my_button.pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
