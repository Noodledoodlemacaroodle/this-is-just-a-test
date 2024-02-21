extends Node3D
@onready var hitBox = $Area3D
@onready var anim = $AnimatedSprite3D
@onready var init_size = anim.scale
@onready var timer = $Timer

var has_been_collected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("BrainIdle")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_been_collected:
		_destroy_Collectible()
		
		
		




func _on_area_3d_body_entered(body):
	if body.has_method("Player"):
		has_been_collected = true
		timer.start()
		
		

func _destroy_Collectible():
	scale = lerp(scale, Vector3(0,init_size.y * 10,0),0.15)
	position.y = lerp(position.y, 2.0, 0.1)


func _on_timer_timeout():
	queue_free() # Replace with function body.
