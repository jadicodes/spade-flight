extends Node2D


var score: int


func reset_score() -> void:
	score = 0


func increase_score() -> void:
	score += 1


func return_score() -> int:
	return score
