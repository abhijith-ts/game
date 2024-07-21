extends Control

@onready var game_manager = %GameManager
var paused = false
func _process(delta):
	if (
		Input.is_action_just_released("escape")
	):
		pause_menu()

func pause_menu():
	if paused:
		$".".hide()
		Engine.time_scale = 1
	else:
		$".".show()
		Engine.time_scale = 0.01
	paused = !paused
	


func _on_resume_pressed():
	pause_menu()
	
func _on_quit_pressed():
	get_tree().quit()


func _on_imvis_button_pressed():
	game_manager.crafter('invisibility')


func _on_strength_button_pressed():
	game_manager.crafter('strength')


func _on_speed_button_pressed():
	game_manager.crafter('speed')


func _on_enchant_button_pressed():
	game_manager.crafter('enchant')
