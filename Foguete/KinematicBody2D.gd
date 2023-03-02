extends KinematicBody2D

var velocidade3 = 0

func _ready():
	visible = false
	
func _process(delta):
	move_and_slide(velocidade3*Vector2(50,0))
	
func _on_Button2_pressed():
	visible = true
	position = Vector2(200,350)
	velocidade3 = 5

func _on_Area2D_body_entered(body):
	velocidade3 = 0
