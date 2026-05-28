extends CharacterBody2D

var LEN = 120.0
var WIDTH = 30.0

func _ready():
	RCadeInput.enable_classic_controls()
	RCadeInput.enable_spinners()

var last_angle = 0.0

func _process(delta):
	pass


func _physics_process(delta: float) -> void:
	var angle = RCadeInput.get_spinner_angle(1)
	rotation = angle
	var polygon = PackedVector2Array()
	polygon.append(Vector2.ZERO)
	var diff = last_angle - angle
	polygon.append(Vector2(cos(diff) * LEN, sin(diff) * LEN))
	polygon.append(Vector2(LEN, 0))
	$Polygon2D.polygon = polygon
	last_angle = angle
	var a = test_move(transform, Vector2.ZERO)
	print(a)
