extends Node2D

var velocidade = 0

func _ready():
	$Icon.visible = false

func _process(delta):
	$Icon.move_local_x(velocidade)
	if abs($Icon.position.x - $Icon2.position.x) < 20:
		velocidade = 0
		$Label.text = "Icon2 foi atingido"
		
func _on_Button_pressed():
	$Icon.visible = true
	$Icon.position = Vector2(200,100)
	velocidade = 10
	
func _on_Area2D_body_entered(body):
	$Label.text = "Icon2 foi atingido"
