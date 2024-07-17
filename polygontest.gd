extends Node2D

func _ready():
	var polygon = Polygon2D.new()
	var points = [
		Vector2(0, 0),
		Vector2(100, 0),
		Vector2(100, 100),
		Vector2(0, 100)
	]
	polygon.polygon = points
	polygon.color = Color(1, 0, 0)  # Red color
	add_child(polygon)
