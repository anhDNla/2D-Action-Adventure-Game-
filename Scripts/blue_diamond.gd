extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body):
	#print("diamond")
	game_manager.add_diamond()
	queue_free()
