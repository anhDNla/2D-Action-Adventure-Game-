extends Node

var score = 0

@onready var you_collected_x_diamonds = $"You collected X diamonds"
@onready var you_collected_x_diamonds_02 = $"You collected X diamonds_02"
@onready var you_collected_x_diamonds_03 = $"You collected X diamonds_03"

func add_diamond():
	score += 1
	print(score)
	you_collected_x_diamonds.text = "You collected " + str(score) + " diamonds. "
	you_collected_x_diamonds_02.text = "You collected " + str(score) + " diamonds. "
	you_collected_x_diamonds_03.text = "You collected " + str(score) + " diamonds. "
