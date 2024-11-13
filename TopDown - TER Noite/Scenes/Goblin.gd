extends CharacterBody2D

var dir 
var spd = 50

@onready var player = $"../Player"
@onready var sprite = $AnimatedSprite2D

func _ready():
	pass
	
func _physics_process(delta):
	Move(delta)

	pass
	
func Move(delta):
	dir = player.global_position - global_position
	
	velocity = dir.normalized() * spd
	
	move_and_slide()
	pass
	
	if player.global_position.x >= global_position.x:
		sprite.flip_h = false
		
	else:
		sprite.flip_h = true
		
	pass


func _on_area_2d_body_entered(body):
	
	if body.is_in_group("Bullet"):
		body.queue_free()
		queue_free()
	pass
