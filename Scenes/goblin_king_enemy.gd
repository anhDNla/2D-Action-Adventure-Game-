extends Node2D

var HEALTH = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

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
