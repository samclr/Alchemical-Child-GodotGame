extends Node2D

#pathFollow is the var i set so i can use these terms: https://docs.godotengine.org/en/stable/classes/class_pathfollow2d.html
@onready var pathFollow: PathFollow2D = $Path2D/PathFollow2D
#speed in  pix per second
@export var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	#turns path looping off
	pathFollow.loop = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#moves npc at selected speed 
	pathFollow.progress += speed*delta
	
	#checks if path is complete
	if pathFollow.progress_ratio == 1:
		print('path complete')
		#removes the npc
		queue_free()
		
	
		
	
	

