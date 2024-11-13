extends CharacterBody2D

var dir
var spd = 50

@onready var anim = $AnimatedSprite2D

func _ready():
	pass


func _physics_process(delta):
	
	Move(delta)
	Anim()
	
	pass


func Move(delta):
	
	dir = Input.get_vector("Left" , "Right" , "Up" , "Down")
	
	velocity = dir.normalized() * spd
	
	move_and_slide()
	
	pass


func Anim():
	
	if velocity.length() > 0:
		anim.play("Walk")
	else:
		anim.play("Idle")
	
	if Input.is_action_pressed("Left"):
		anim.flip_h = true
	if Input.is_action_pressed("Right"):
		anim.flip_h = false
	
	pass
