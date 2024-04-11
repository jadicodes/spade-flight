class_name Pipes
extends CharacterBody2D

signal add_to_score
var _movement_speed: int = -50


func _process(_delta):
	velocity.x = _movement_speed
	
	move_and_slide()


func _on_off_screen_notifier_screen_exited():
	queue_free()


func _on_scorer_body_entered(_body):
	add_to_score.emit()
	
