extends Node2D

var movimento_x = 1 # criação da variável (pode variar ao decorrer do código)
var movimento_yI2 = 0
var movimento_xI3 = 0
var movimento_yI4 = 0
#var passo = 0

func _ready(): # Roda o que está embaixo inicialmente
	movimento_x = 0
	movimento_yI2 = 0
	movimento_xI3 = 0
	movimento_yI4 = 0

func _process(delta): # Executa esse processo (código) em looping
#	passo = passo + 1
#	print(passo)
	$Icon.move_local_x(movimento_x)
	$Icon2.move_local_y(movimento_yI2)
	$Icon3.move_local_x(movimento_xI3)
	$Icon4.move_local_y(movimento_yI4)
	
	if (Input.get_action_strength("ui_right")):
		movimento_x = 5
	if (Input.get_action_strength("ui_left")):
		movimento_x = -5
	
	if abs($Icon.position.x - $Icon2.position.x) < 20:
		movimento_x = 0
		movimento_yI2 = 5
	
	if abs($Icon2.position.y - $Icon3.position.y) < 10:
		movimento_yI2 = 0
		movimento_xI3 = -5
	
	if abs($Icon3.position.x - $Icon4.position.x) < 20:
		movimento_xI3 = 0
		movimento_yI4 = -5
		
#	if $Icon.position.y > $Icon2.position.y:
#		$Icon2.move_local_y(5)
		
#	$Icon.move_local_y(movimento_y)
#	if passo == 160:
#		movimento_x = 0
#		movimento_y = 1
#	if passo == 320:
#		movimento_x = -1
#		movimento_y = 0
#	if passo == 480:
#		movimento_x = 0
#		movimento_y = -1


#	if (passo % 10) == 0:
#	movimento_x = movimento_x + 1
#	if $Icon.position.x > 1500:
#		movimento_x = -5

#	if $Icon.position.x < 0:
#		movimento_x = 5

#	if $Icon.position.y > 800:
#		movimento_y = -5

#	if $Icon.position.y < 0:
#		movimento_y = 5
		

