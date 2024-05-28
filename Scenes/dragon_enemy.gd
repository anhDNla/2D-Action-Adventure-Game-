extends Node2D

const SPEED = 60
var HEALTH = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func handle_hit(damage):
	HEALTH = HEALTH - damage
	if(HEALTH==0):
		print("Dragon dead")
	print("Dragon Health down")
