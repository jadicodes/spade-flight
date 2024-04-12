extends Node2D

var _game_started = false

@export var pipes_scene: PackedScene

@onready var hud_scene = get_node("HUD")


func _on_spawn_timer_timeout() -> void:
	if _game_started:
		var pipe = pipes_scene.instantiate()
		add_child(pipe)
		pipe.add_to_score.connect(hud_scene._update_score)
		pipe.position.y += _generate_pipe_y()


func _generate_pipe_y() -> int:
	var _pipe_y: int = randi_range(-40, 40)
	return _pipe_y


func _on_spade_game_started():
	_game_started = true
