extends Area2D

# Export variable with a default value
@export var damage: int = 10

# Onready variable for animation
@onready var anim = $Swing

# Attack function to play the animation
func attack():
	anim.play("SwingAnimation")


func _on_body_entered(body):
	if body.has_method("handle_hit"):
		body.handle_hit(damage)
