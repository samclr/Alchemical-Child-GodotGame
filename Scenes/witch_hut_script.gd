extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#for player spawning on scene start and entering
	if global.game_first_loadin == true:
		$Player.position.x = global.player_start_witchhut_x
		$Player.position.y = global.player_start_witchhut_y
	else:
		$Player.position.x = global.player_exit_witchhut_x 
		$Player.position.y = global.player_exit_witchhut_y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene() 


func change_scene():
	if global.transition_scene == true:
		if global.current_scene == 'witch_hut':
			get_tree().change_scene_to_file("res://Scenes/woods_scene.tscn")
			global.game_first_loadin = false #sets first loadin to false so when you reenter you go in the door
			global.finish_changingScene() #starts the function to clean up switching scnenes in the global script



func _on_door_transition_body_entered(body):
	if body.has_method('Player'): #checks if the body that entered the transtion zone has a function called 'Player'
		global.transition_scene = true #tells change_scene() function its time to change
		

