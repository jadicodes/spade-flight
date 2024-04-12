class_name Pipes
extends CharacterBody2D

signal add_to_score

var _movement_speed: int = -50
var _has_collided = false

func _process(delta):
	velocity.x = _movement_speed
	
	_has_collided = move_and_collide(velocity * delta)
	
	if _has_collided:
		_kill()


func _on_off_screen_notifier_screen_exited():
	queue_free()


func _on_scorer_body_entered(_body):
	add_to_score.emit()
	$SuccessSound.play()

func _kill():
	get_tree().change_scene_to_file("res://ui_screens/end_screen/end_screen.tscn")
