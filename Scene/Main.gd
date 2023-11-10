extends Node2D

#export (PackedScene) var scene1

#func _ready():
#	var instance_scene = scene1.instance()
#	add_child(instance_scene)

@export var scene = load("res://Scene/ball.tscn")

func _ready():
	var instance_scene = scene.instantiate()
	add_child(instance_scene)
	instance_scene.position = get_window().get_size() / 4
