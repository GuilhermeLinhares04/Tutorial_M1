extends LineEdit


func _ready():
	pass # Replace with function body.

func _on_LineEdit_text_entered(Label2: String) -> void:
	Node2D.add_to(Label)
