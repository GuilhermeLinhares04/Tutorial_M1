extends Node2D

# Pré-carregamento dos obstáculos
var obstacle=preload("res://TileMap.tscn")
var max_obstacle=1000 # número total de obstáculos que aparecerão

# Loop para o carregamento dos obstáculos
func _ready() -> void:
	for i in range(max_obstacle):
		var Obstacle_scene=obstacle.instance() # instancia cena
		Obstacle_scene.global_position=Vector2(9000 *(i+1),0)
		$Obstacle_container.add_child(Obstacle_scene)
	
# Quando botão de reiniciar é pressionado o jogo reinicia
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")
