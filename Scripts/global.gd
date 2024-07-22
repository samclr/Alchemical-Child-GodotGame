extends Node

var current_scene = 'witch_hut'
var transition_scene = false

var game_first_loadin = true #helps with player location on first run of game

#cords for player when entering and exiting the witch hut
var player_start_witchhut_x = -643
var player_start_witchhut_y = 467
var player_exit_witchhut_x = -896
var player_exit_witchhut_y = 453

#tracks nodes/npcs that have been removed so we dont respawn them
var removed_nodes = {}

var in_letter_range = false
var letter_opened = false

# needs changes when we have more then 2 scenes
func finish_changingScene():
	if transition_scene == true:
		transition_scene = false
		if current_scene == 'witch_hut': # more logic will be required here when more scenes are added
			current_scene = 'woods'
		elif current_scene == 'woods':
			current_scene = 'witch_hut'
