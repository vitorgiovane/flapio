extends Node2D

onready var Bird = get_node("bird")
onready var Background = get_node("background")
onready var GameOverTimer = get_node("gameOver")
onready var Pipe = get_node("PipeMaker/pipes")
onready var Point = get_node("PipeMaker/Point")
onready var ScoreLabel = get_node("NodeInterface/Interface/ScoreLabel")
onready var coinSound = get_node("Sounds/coin")
onready var gameOverSound = get_node("Sounds/gameOver")

var points = 0
var state = 0

const INGAME = 1
const GAMEOVER = 2

func _ready():
	pass

func gameOver():
	if state != 2:
		gameOverSound.play()
	Bird.apply_impulse(Vector2(0,0), Vector2(-12800, -9000))
	state = GAMEOVER
	GameOverTimer.start()

func _on_gameOver_timeout():
	get_tree().reload_current_scene()
	pass

func score():
	points += 1
	coinSound.play()
	ScoreLabel.set_text(str(points))
