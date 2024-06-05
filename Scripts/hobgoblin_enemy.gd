extends Node2D

var HEALTH = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func handle_hit(damage):
	HEALTH = HEALTH - damage
	if(HEALTH==0):
		print("Slime dead")
	print("Slime Health down")
