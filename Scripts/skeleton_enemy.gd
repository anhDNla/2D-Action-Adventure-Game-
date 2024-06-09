extends Node2D

const SPEED = 70
@onready var ray_cast_right = $AnimatedSprite2D/RayCastRight
@onready var ray_cast_left = $AnimatedSprite2D/RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D
@export var HEALTH: int = 50
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
	HEALTH = HEALTH - damage
	if(HEALTH<=0):
		$AnimatedSprite2D.play("Death")
		await get_tree().create_timer(0.7).timeout
		if $AnimatedSprite2D.animation_finished:
			on_finished()
			
func on_finished():
	set_physics_process(false)
	queue_free()
