extends Control

func _ready():
	$SettingsMenu.set_visible(false)

func _on_settings_pressed():
	$TitleMenu.set_visible(false)
	$SettingsMenu.set_visible(true)

func _on_game_exit_pressed():
	get_tree().quit()

func _on_back_pressed():
	$TitleMenu.set_visible(true)
	$SettingsMenu.set_visible(false)


func _on_game_launch_pressed():
	var scene = preload("res://Game.tscn")
	get_tree().root.add_child(scene.instantiate())
