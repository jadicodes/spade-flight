extends Node2D

var _score: int

func _ready() -> void:
	Jukebox.play_explosion()
	_set_score_label()


func _on_play_again_button_pressed() -> void:
	Score.reset_score()
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_menu_button_pressed() -> void:
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://ui_screens/main_menu/main_menu.tscn")


func _set_score_label() -> void:
	_score = Score.return_score()
	$ScoreLabel.text = "Score: " + str(_score)
	
