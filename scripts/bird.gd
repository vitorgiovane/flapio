extends RigidBody2D

func _ready():
  pass

func _input(event):
  if event.is_action_pressed("leftClick"):
    jump()

func jump():
	apply_impulse(Vector2(0,0), Vector2(0, -5950))