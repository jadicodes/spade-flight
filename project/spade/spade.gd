extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -185.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta


	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		$FlapSound.play()

	move_and_collide(velocity * delta)
