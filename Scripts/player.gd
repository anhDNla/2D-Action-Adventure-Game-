extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

#var direction

@onready var animated_sprite = $AnimatedSprite2D
@onready var spawn_point = %SpawnPoint
@onready var weapon = $Weapon

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("move_left", "move_right")
	
	#Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
		weapon.toggleRight()
	elif direction < 0:
		animated_sprite.flip_h = true 
		weapon.toggleLeft()
	
	#Play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Attack"):
		weapon.attack()
	
func death_tween():
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2.ZERO, 0.15)
	await tween.finished
	global_position = spawn_point.global_position
	await get_tree().create_timer(0.3).timeout
	respawn_tween()

func respawn_tween():
	var tween = create_tween()
	tween.stop(); tween.play()
	tween.tween_property(self, "scale", Vector2.ONE, 0.15) 


func _on_collision_body_entered(_body):
	if _body.is_in_group("OutOfBounds"):
		death_tween()
		
func _on_collision_area_entered(_area):
	if _area.is_in_group("Enemy"):
		#print("Collision")
		#var direction = _area.global_position.direction_to(self.global_position)
		#var collision = move_and_collide(direction*SPEED*0.05)
		#if(collision):
			##var bounce = collision.get_collider().rotation
			#direction = direction.bounce(collision.get_normal())
		#if is_on_floor():
			##velocity.y = JUMP_VELOCITY * .05
			##velocity.x = move_toward(velocity.x, 0, SPEED*75)
			#velocity.x = Input.get_axis("move_left", "move_right") * (SPEED*50)
			#velocity = velocity.bounce(direction)* 3
		#else:
			#velocity = velocity.bounce(direction)* 1
		var kb_direction = (-velocity).normalized() * 750
		velocity = kb_direction
		velocity.y += 450
		move_and_slide() 
