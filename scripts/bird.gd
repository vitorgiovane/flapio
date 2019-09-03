extends RigidBody2D

func _ready():
  pass

func _input(event):
  if event.is_action_pressed("leftClick"):
    print("Left click")
