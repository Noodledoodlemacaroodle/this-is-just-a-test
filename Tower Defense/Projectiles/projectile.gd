extends AnimatedSprite2D

const SPEED = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2.RIGHT.rotated(rotation) * SPEED
	


func _on_lifetime_timeout():
	queue_free()

func Projectile():
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent().has_method("Enemy"):
		queue_free()
