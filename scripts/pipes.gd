extends Node2D

export var speed = -300

func _ready():
	set_process(true)

func _process(delta):
	position.x = position.x + speed * delta
	
	if position.x < -200:
		queue_free()