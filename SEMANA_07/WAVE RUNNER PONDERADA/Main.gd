extends Node2D

var obstacle=preload("res://TileMap.tscn")
var max_obstacle=1000

func _ready() -> void:
	for i in range(max_obstacle):
		var Obstacle_scene=obstacle.instance()
		Obstacle_scene.global_position=Vector2(9000 *(i+1),0)
		$Obstacle_container.add_child(Obstacle_scene)
	
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")
