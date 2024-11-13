extends Node2D


var obj = preload("res://Prefabs/goblin.tscn")

var time

func Spawn():
	
	var new_obj = obj.instantiate()
	
	new_obj.global_position = Vector2(randf_range(get_viewport_rect().size.x , 0) , randf_range(get_viewport_rect().size.y , 0))
	
	get_parent().add_child(new_obj)
	
	pass
	
	


func _on_timer_timeout():
	
	Spawn()
	
	time = randf_range(0.2 , 1.2)
	$Timer.wait_time = time
	
	
	pass
