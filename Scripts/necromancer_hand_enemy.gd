extends Node2D

const SPEED = 60
var HEALTH = 40

# Assuming you have RayCast nodes set up for up and down directions
@onready var ray_cast_up = $RayCastUp
@onready var ray_cast_down = $RayCastDown
@onready var animated_sprite_2d = $AnimatedSprite2D

var direction = 1  # 1 for moving down, -1 for moving up

func _process(delta):
	if ray_cast_up.is_colliding():
		direction = 1  # Move down
		animated_sprite_2d.flip_h = true;
	if ray_cast_down.is_colliding():
		direction = -1  # Move up
		animated_sprite_2d.flip_h = false;
	position.y += direction * SPEED * delta

func handle_hit(damage):
	HEALTH = HEALTH - damage
	if(HEALTH<=0):
		$AnimatedSprite2D.play("Death")
		await get_tree().create_timer(0.7).timeout
		if $AnimatedSprite2D.animation_finished:
			on_finished()
			
func on_finished():
	set_physics_process(false)
	queue_free()
