extends Node2D

func _ready():
	pass

# Botão para retornar à tela inicial
func _on_Button_pressed():
	get_tree().change_scene("res://Node2D.tscn")
