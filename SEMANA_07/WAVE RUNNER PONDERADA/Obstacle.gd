extends Area2D

func _ready():
	pass

# Quando o jogador encosta na onda o jogo para
func _on_Player_entered(body: Node) -> void:
	if "Player" in body.name:
		body.queue_free() # jogador é deletado
