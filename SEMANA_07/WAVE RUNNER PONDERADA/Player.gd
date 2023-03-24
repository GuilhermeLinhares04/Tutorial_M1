extends KinematicBody2D

export var speed:int=900
export var jumpforce:int=1500
export var gravity:int=4500
var velocity:Vector2=Vector2()
var score=0

func _physics_process(delta):
	velocity.x=speed
	if Input.is_action_just_pressed("ui_up"):
		velocity.y -=jumpforce
	velocity.y+=gravity * delta
	velocity.y=move_and_slide(velocity,Vector2.UP).y
	score+=delta*speed
	if score >= 3000:
		speed += 1.5
	$Control/ScoreLabel.text = str(score)
	print(position.y)
	if position.y <= -307:
		get_tree().change_scene("res://Main.tscn")
	
#func _on_Player_body_entered(body):
#	if body.is_in_group("ground"):
#		can_jump = true
		
