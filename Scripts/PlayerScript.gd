extends CharacterBody2D

const speed = 300

var current_dir = 'none'

func Player():
	# a function that only the player has so we can identify it with ( if body.has_method('Player'): )
	pass

func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):

	if Input.is_action_pressed("ui_right"):
		current_dir = 'right'
		play_anim(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = 'left'
		play_anim(1)
		velocity.x = -1*speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = 'front'
		play_anim(1)
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		current_dir = 'back'
		play_anim(1)
		velocity.x = 0
		velocity.y = -1*speed
	else:
		play_anim(0)
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if current_dir == 'left':
		if movement == 1:
			anim.play('left_walk')
		elif movement == 0:
			anim.play('left_idle')
	if current_dir == 'right':
		if movement == 1:
			anim.play('right_walk')
		elif movement == 0:
			anim.play('right_idle')
	if current_dir == 'front':
		if movement == 1:
			anim.play('front_walk')
		elif movement == 0:
			anim.play('front_idle')
	if current_dir == 'back':
		if movement == 1:
			anim.play('back_walk')
		elif movement == 0:
			anim.play('back_idle')
			
		
	
	
	
	


