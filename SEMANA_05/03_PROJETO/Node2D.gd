extends Node2D

var teste = false
var valor = 0
var nome = "" # Variável corrigida para receber o nome digitado pelo usuário
var lista = []
var numero = 0
var cont # Variável adicionada

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # Variável corrigida para "numero"
	$LineEdit.text = str(numero) # Convertendo o número em string para mostrar na tela
	nome = $LineEdit.text # Atribuindo o valor digitado na linha de edição à variável nome

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	numero = int($Label.text) # Variável corrigida para "numero"
	for i in range(10):
		numero += i
		lista.append(numero)
	$Label.text = str(numero) # Convertendo o número em string para mostrar na tela

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	cont = 0 # variável cont corrigida para iniciar com valor 0
	for numero in lista: # Percorrendo a lista de números
		if numero % 2 == 1:
			cont += 1
	if cont != 0:
		nome = nome + "baldo" # Adicionando "baldo" ao final do nome se houver número ímpar
	$Label2.text = nome
