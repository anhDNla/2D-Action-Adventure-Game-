extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	#print("white diamond")
	game_manager.add_diamond()
	animation_player.play("pickup")
