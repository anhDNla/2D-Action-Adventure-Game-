extends Node

var score = 0

@onready var you_collected_x_diamonds = $"You collected X diamonds"
@onready var you_collected_x_diamonds_2 = $"You collected X diamonds_2"

func add_diamond():
	score += 1
	print(score)
	you_collected_x_diamonds.text = "You collected " + str(score) + " diamonds. "
	you_collected_x_diamonds_2.text = "You collected " + str(score) + " diamonds. "
