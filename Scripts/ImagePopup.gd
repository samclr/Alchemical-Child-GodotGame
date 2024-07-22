extends Control

func _ready():
	hide()
	$Button.connect("pressed", Callable(self, "_on_close_button_pressed"))

func _on_close_button_pressed():
	hide()  # Hide the pop-up when the close button is pressed
	global.letter_opened = false

func show_image():
	show()  # Function to show the image

func _process(delta):
	if Input.is_action_pressed("ui_cancel"): # if escape key is pressed
		hide()
		global.letter_opened = false
		
	if global.letter_opened == true:
		show()
	

