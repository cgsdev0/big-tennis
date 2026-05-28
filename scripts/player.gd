extends CharacterBody2D

func _ready():
	RCadeInput.enable_classic_controls()
	RCadeInput.enable_spinners()
	
func _process(delta):
	var angle = RCadeInput.get_spinner_angle(1)
	rotation = angle
