extends Node2D

export var speed = -300
var game

func _ready():
	game = get_tree().get_current_scene()
	set_process(true)

func _process(delta):
	position.x = position.x + speed * delta
	
	if position.x < -100:
		queue_free()

func _on_Area2D_body_entered(body):
	if body.name == "bird":
		game.gameOver()
	pass
