extends Node2D

const SPEED = 60
var HEALTH = 50
#@onready var ray_cast_right = $RayCastRight
#@onready var ray_cast_left = $RayCastLeft
#
#
#var direction = 1
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if ray_cast_right.is_colliding():
		#direction = -1
	#if ray_cast_left.is_colliding():
		#direction = 1
	#position.x += direction * SPEED * delta

func handle_hit(damage):
	HEALTH = HEALTH - damage
	if(HEALTH==0):
		print("Devil dead")
	print("Devil Health down")
