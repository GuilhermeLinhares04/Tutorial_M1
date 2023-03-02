extends Node2D


func _ready():
	pass

func _process(delta):
	NewScriptCena01E02.passos +=1
	$Label.text = str(NewScriptCena01E02.passos)
	$Icon01CENA01.move_local_x(NewScriptCena01E02.velocidade_x)
	if $Icon01CENA01.position.x == 800:
		get_tree().change_scene("res://Node2DCENA02.tscn")
	
