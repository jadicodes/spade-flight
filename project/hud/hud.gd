extends Control

var _score: int

func _update_score() -> void:
	_score += 1
	$Score.text = str(_score)
