extends Area2D

var direction = 'R'
@onready var hit_audio = $hit_audio

# Export variable with a default value
@export var damage: int = 10

# Onready variable for animation
@onready var anim = $Swing
func toggleRight():
	$LeftSword.visible = false
	$RightSword.visible = true
	direction = 'R'

func toggleLeft():
	$RightSword.visible = false
	$LeftSword.visible = true
	direction = 'L'

# Attack function to play the animation
func attack():
	if(direction == 'R'):
		anim.play("SwingAnimation")
		
func _on_area_entered(area):
	if area.get_parent().has_method("handle_hit"):
		area.get_parent().handle_hit(damage)
		hit_audio.play()
