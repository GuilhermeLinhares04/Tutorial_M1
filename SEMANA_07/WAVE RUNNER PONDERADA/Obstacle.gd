extends Area2D

func _ready():
	pass

func _on_Player_entered(body: Node) -> void:
	if "Player" in body.name:
		body.queue_free()
