extends Node2D

func _ready():
	Jukebox.play_music()


func _on_play_button_pressed():
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_quit_button_pressed():
	Jukebox.play_click()
	get_tree().quit()
