extends Node

var elapsed_time: float = 0.0
var is_running: bool = false

@onready var label: Label = $Player/Label

func _ready() -> void:
	start()

func _process(delta: float) -> void:
	if is_running:
		elapsed_time += delta
		label.text = get_formatted_time()

func start() -> void:
	elapsed_time = 0.0
	is_running = true

func stop() -> float:
	is_running = false
	return elapsed_time

func get_formatted_time() -> String:
	var minutes = int(elapsed_time) / 60
	var seconds = int(elapsed_time) % 60
	var milliseconds = int((elapsed_time - int(elapsed_time)) * 1000)
	return "%02d:%02d.%03d" % [minutes, seconds, milliseconds]
