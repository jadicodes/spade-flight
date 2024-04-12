extends Node2D


func _ready():
	$EndSound.play()


func _on_play_again_button_pressed():
	Jukebox._play_click()
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_menu_button_pressed():
	Jukebox._play_click()
	get_tree().change_scene_to_file("res://ui_screens/main_menu/main_menu.tscn")
