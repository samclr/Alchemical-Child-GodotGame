extends Control

func _ready():
	hide()  # Hide the pop-up initially
	$Button.connect("pressed", Callable(self, "_on_close_button_pressed"))

func _on_close_button_pressed():
	hide()  # Hide the pop-up when the close button is pressed

func show_image():
	show()  # Function to show the image
