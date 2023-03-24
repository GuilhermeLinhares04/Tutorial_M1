extends Node2D

func _ready():
	pass # Replace with function body.
	
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_Tutorial_pressed():
	get_tree().change_scene("res://ComoJogar.tscn")
