extends Control


func _update_score() -> void:
	Score.increase_score()
	var _score = Score.return_score()
	$Score.text = str(_score)
