extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = Timer.new()
	add_child(timer)
	timer.start(3.0)
	timer.timeout.connect(on_timer)
	on_timer()

var ball_scene = preload("res://scenes/ball.tscn")

func on_timer():
	var ball = ball_scene.instantiate()
	add_child(ball)
	ball.position.x += randf_range(-0.1, 0.1)
