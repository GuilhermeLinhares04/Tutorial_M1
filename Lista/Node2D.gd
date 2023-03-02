extends Node2D

var dado1
var dado2
var dado3
var dado4
var lista


func _on_Button2_pressed():
	dado1 = ($Dado1.text)
	dado2 = ($Dado2.text)
	dado3 = ($Dado3.text)
	dado4 = ($Dado4.text)
	lista = str(dado1,";\n",dado2,";\n",dado3,";\n",dado4,".")
	
	$Label2.text = String(lista)


func _on_Button3_pressed():
	$Label2.text = String(" ")
