#extends Node2D
#const SPEED = 60
#
#@onready var ray_cast_right = $RayCastRight
#@onready var ray_cast_left = $RayCastLeft
#@onready var animated_sprite = $AnimatedSprite2D
#
#var direction = 1
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if ray_cast_right.is_colliding():
		#direction = -1
		#animated_sprite.flip_h = true;
	#if ray_cast_left.is_colliding():
		#direction = 1
		#animated_sprite.flip_h = false;
	#position.x += direction * SPEED * delta


extends Node2D

const SPEED = 60

# RayCast nodes for all four directions
@onready var ray_cast_up = $RayCastUp
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_down = $RayCastDown
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

enum Directions {
	UP,
	RIGHT,
	DOWN,
	LEFT
}

var current_direction = Directions.UP

func _process(delta):
	match current_direction:
		Directions.UP:
			if ray_cast_up.is_colliding():
				current_direction = Directions.RIGHT  # Change direction to right if collision occurs
			else:
				position.y -= SPEED * delta  # Move up

		Directions.RIGHT:
			if ray_cast_right.is_colliding():
				current_direction = Directions.DOWN  # Change direction to down if collision occurs
				animated_sprite.flip_h = true;
				animated_sprite.flip_v = false;
			else:
				position.x += SPEED * delta  # Move right
				animated_sprite.flip_h = false;
				animated_sprite.flip_v = true;

		Directions.DOWN:
			if ray_cast_down.is_colliding():
				current_direction = Directions.LEFT  # Change direction to left if collision occurs
			else:
				position.y += SPEED * delta  # Move down

		Directions.LEFT:
			if ray_cast_left.is_colliding():
				current_direction = Directions.UP  # Change direction to up if collision occurs
				animated_sprite.flip_h = false;
			else:
				position.x -= SPEED * delta  # Move left
				
