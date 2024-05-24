extends Area2D

@onready var anim = $Swing

func attack():
	anim.play("SwingAnimation")
