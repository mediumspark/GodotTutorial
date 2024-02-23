extends Node2D

var player_health = 3
@export var player_hearts : Array[Sprite2D]
@export var empty_heart = Texture
@export var enemy_health_bar = Range.new()

func _on_get_hurt_button_pressed():
	var heart = player_hearts[player_health - 1]
	heart.texture = empty_heart
	
	if player_health > 0 :
		player_health -= 1	

func _on_attack_button_pressed():
	enemy_health_bar.value -= 10
