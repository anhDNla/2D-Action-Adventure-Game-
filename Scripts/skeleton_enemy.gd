extends Node2D

const SPEED = 60
@onready var ray_cast_right = $AnimatedSprite2D/RayCastRight
@onready var ray_cast_left = $AnimatedSprite2D/RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D
@export var health: int = 30
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true;
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false;
	position.x += direction * SPEED * delta

func handle_hit(damage:int):
	health -= damage
	print("enemy hit, health:" + str(health))
	if health < 0:
		queue_free()
