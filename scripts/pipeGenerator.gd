extends Position2D

onready var PipeComponent = preload("res://components/pipes.tscn")

func _ready():
	pass

func _on_Timer_timeout():
	var pipe = PipeComponent.instance()
	pipe.position = position + Vector2(0, rand_range(-1100, -150))
	owner.add_child(pipe)
