extends CharacterBody2D

signal game_started

const SPEED = 300.0
const JUMP_VELOCITY = -185.0

var _game_started = false
var _has_collided = false


func _ready():
	$SpaceLabel.show()
	

func _physics_process(delta) -> void:
	if Input.is_action_pressed("ui_accept"):
		$SpaceLabel.hide()
		_game_started = true
		game_started.emit()

	if _game_started:
		var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
		if not is_on_floor():
			velocity.y += gravity * delta


		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = JUMP_VELOCITY
			Jukebox.play_flap()

		_has_collided = move_and_collide(velocity * delta)
		
		if _has_collided:
			_kill()


func _kill() -> void:
	get_tree().change_scene_to_file("res://ui_screens/end_screen/end_screen.tscn")
