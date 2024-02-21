extends Node3D
@onready var hitBox = $Area3D
@onready var anim = $AnimatedSprite3D

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("BrainIdle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_3d_body_entered(body):
	#if body = "res://player.tscn":
