extends KinematicBody2D

# Variáveis das características do jogador
export var speedPlayer:int=900 # velocidade
export var jumpforce:int=1500 # força do pulo
export var gravity:int=4500 # gravidade
var velocity:Vector2=Vector2() # movimentação
var score=0 # pontuação

func _physics_process(delta):
	velocity.x=speedPlayer # Jogador vai para a direita
	if Input.is_action_just_pressed("ui_up"):
		velocity.y -=jumpforce # jogador vai pra cima quando pressionada a tecla
	velocity.y+=gravity * delta # jogador sofre com a força da gravidade
	velocity.y=move_and_slide(velocity,Vector2.UP).y # mexe o jogador
	score+=delta*speedPlayer # cálculo da pontuação do jogador
	if score >= 3000:
		speedPlayer += 1.5 # aumenta a velocidade do jogador quando a pontuação aumenta
	$Control/ScoreLabel.text = str(score) # texto da pontuação
	if position.y <= -307:
		get_tree().change_scene("res://Main.tscn") # botão de reiniciar o jogo quando perde
	
