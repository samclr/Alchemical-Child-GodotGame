extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene() #constantly runninng function to see if we need to change scene


#this function gets triggered if the player walks into the transition zone
func _on_woods_to_witch_transition_body_entered(body):
	if body.has_method('Player'): #checks if the body that entered the transtion zone has a function called 'Player'
		global.transition_scene = true #tells change_scene() function its time to change




func change_scene():
	if global.transition_scene == true:
		if global.current_scene == 'woods':
			get_tree().change_scene_to_file("res://Scenes/WitchHut/witch_hut.tscn") # changes scene to witch hut
			global.finish_changingScene() #triggers function in global script to clean up transition
