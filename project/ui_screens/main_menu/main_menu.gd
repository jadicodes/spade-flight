extends Node2D


func _ready():
	Jukebox.play_music()


func _on_play_button_pressed() -> void:
	Score.reset_score()
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_credits_button_pressed():
	$CreditsBackground.show()


func _on_ok_button_pressed():
	$CreditsBackground.hide()
