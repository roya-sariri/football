extends CharacterBody2D

var jumping = false

func _ready():
	$AnimatedSprite2D.play("default")

func _input(event):
	velocity = Vector2()
	$AnimatedSprite2D.play("default")
	if event.is_action_pressed('right'):
		velocity.x += 250
		$AnimatedSprite2D.play("run")
	if event.is_action_pressed("left"):
		velocity.x -= 250
		$AnimatedSprite2D.play("run")
	if event.is_action_pressed("up") and not jumping:
		velocity.y -= 800
		jumping = true
		$AnimatedSprite2D.play("head")
	elif velocity.y < 440:
		velocity.y += 2400
		jumping = false

func _physics_process(delta):
	move_and_slide()
