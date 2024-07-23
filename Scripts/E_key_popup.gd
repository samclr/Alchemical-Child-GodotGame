extends Control


func _ready():
	hide()

func _process(delta):

	if global.in_letter_range == true:
		show()
	if global.letter_opened == true:
		hide()
	if global.in_letter_range == false:
		hide()
	
