extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.first_time_leaving_hut == false: # if player left hut 
		queue_free() #delete letter
