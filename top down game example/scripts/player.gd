extends CharacterBody2D

const speed = 100

var current_dir = 'none'

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
	
	if dir == 'right':
		anim.flip_h = false
		if movement == 1:
			anim.play('side_walk')
		elif movement == 0:
			anim.play('side_idle')
	
	if dir == 'left':
		anim.flip_h = true
		if movement == 1:
			anim.play('side_walk')
		elif movement == 0:
			anim.play('side_idle')
	
	if dir == 'back':
		anim.flip_h = false
		if movement == 1:
			anim.play('back_walk')
		elif movement == 0:
			anim.play('back_idle')
	
	if dir == 'front':
		anim.flip_h = false
		if movement == 1:
			anim.play('front_walk')
		elif movement == 0:
			anim.play('front_idle')
	