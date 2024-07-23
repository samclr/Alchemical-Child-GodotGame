extends Node2D

@onready var pathFollow: PathFollow2D = $Path2D/PathFollow2D

@export var speed = 200 #speed in  pix per second

@onready var node_to_remove = $Path2D #specifys the node being removed

@export var node_id = '' #allows you to give each node an id in the scene they are in

var player_in_range = false #player isnt in collison range when first entering scene


# Called when the node enters the scene tree for the first time.
func _ready():
	pathFollow.loop = false #turns path looping off
	
	# Check if this node was previously removed
	if global.removed_nodes.has(node_id) and global.removed_nodes[node_id]:
		node_to_remove.queue_free() #removes node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#moves npc at selected speed
	if player_in_range == true:
		pathFollow.progress += speed*delta
	
	#checks if path is complete
	if global.removed_nodes.has(node_id) != true: #prevents error below if path dosent exist
		if pathFollow.progress_ratio == 1:
			print('path complete')
			#removes the npc
			queue_free()
			global.removed_nodes[node_id] = true #adds removed node to a list of globaly removed nodes



func _on_area_2d_body_entered(body):
	if body.has_method('Player'): #checks if the body that entered the transtion zone has a function called 'Player'
		player_in_range = true



