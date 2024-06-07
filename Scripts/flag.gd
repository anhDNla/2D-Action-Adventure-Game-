extends Area2D


@onready var player = $"../Player"


func _on_body_entered(body):
	if body.is_in_group("Player"):
		player.death_position = position
