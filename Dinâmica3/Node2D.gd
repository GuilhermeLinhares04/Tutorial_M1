extends Node2D

var movimento_x = 0
var movimento_y = 0


# Called when the node enters the scene tree for the first time.
func _ready():

	movimento_x = 0
	movimento_y = 0

func _process(delta):
	$Icon.move_local_x(movimento_x)
	$Icon.move_local_y(movimento_y)

	if (Input.get_action_strength("ui_right")):
		movimento_x = 5
	if (Input.get_action_strength("ui_left")):
		movimento_x = -5
	if (Input.get_action_strength("ui_down")):
		movimento_y = 5
	if (Input.get_action_strength("ui_up")):
		movimento_y = -5

