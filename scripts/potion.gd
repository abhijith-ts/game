extends Area2D

@onready var game_manager = %GameManager

@export var itemType = 'potions'

func _on_body_entered(body):
	game_manager.add_point(itemType)
	queue_free()
