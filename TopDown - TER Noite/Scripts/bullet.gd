extends CharacterBody2D

var dir
var spd = 300


func _ready():
	
	look_at(get_global_mouse_position())
	dir = transform.x
	
	velocity = dir * spd
	
	pass


func _physics_process(delta):
	
	move_and_slide()
	
	pass
