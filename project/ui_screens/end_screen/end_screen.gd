extends Node2D


func _ready() -> void:
	Jukebox.play_explosion()


func _on_play_again_button_pressed() -> void:
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_menu_button_pressed() -> void:
	Jukebox.play_click()
	get_tree().change_scene_to_file("res://ui_screens/main_menu/main_menu.tscn")
