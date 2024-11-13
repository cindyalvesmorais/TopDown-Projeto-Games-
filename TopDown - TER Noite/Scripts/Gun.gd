extends Node2D


var bullet = preload("res://Prefabs/bullet.tscn")

func _process(delta):
	
	if Input.is_action_just_pressed("Shoot"):
		
		var instance = bullet.instantiate()
		
		instance.global_position = global_position
		
		get_parent().get_parent().add_child(instance)
		
	pass

