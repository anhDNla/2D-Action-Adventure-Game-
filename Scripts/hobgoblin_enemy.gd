extends Node2D

var HEALTH = 20
const SPEED = 60
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true;
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false;
	position.x += direction * SPEED * delta

func handle_hit(damage):
	HEALTH = HEALTH - damage
	if(HEALTH==0):
		print("Slime dead")
	print("Slime Health down")
