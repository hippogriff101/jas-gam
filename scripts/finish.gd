extends Area2D

@onready var label: Label = $Player/Label

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body is CharacterBody2D:
		var stopwatch = get_tree().current_scene
		stopwatch.stop()
		stopwatch.label.text = "Finished in: " + stopwatch.get_formatted_time()
