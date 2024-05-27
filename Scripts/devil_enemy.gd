extends Node2D

const SPEED = 60
var HEALTH = 5
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft


var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta

func _on_collision_area_entered(_area):
	if _area.is_in_group("Weapon"):
		HEALTH = HEALTH - 1
		print("Devil Health: " + HEALTH)
