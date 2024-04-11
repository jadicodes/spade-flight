extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -200.0

var _has_collided = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta


	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		$FlapSound.play()


	_has_collided = move_and_collide(velocity * delta)
	
	if _has_collided:
		_kill()

func _kill():
	get_tree().change_scene_to_file("res://ui_screens/end_screen/end_screen.tscn")
