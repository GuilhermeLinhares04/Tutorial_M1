extends Node2D

func _ready():
	pass # Replace with function body.

# Botão para iniciar o jogo
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")

# Botão para ver as observações
func _on_Tutorial_pressed():
	get_tree().change_scene("res://ComoJogar.tscn")
