extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Icon01CENA02.move_local_x(NewScriptCena01E02.velocidade_x)
	
	if $Icon01CENA02.position.x > 800:
		$Icon01CENA02.move_local_x(-5)
