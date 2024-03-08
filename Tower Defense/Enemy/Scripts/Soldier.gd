extends PathFollow2D

var speed = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += speed * delta
	
	if progress_ratio >= 1:
		queue_free()

func Enemy():
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent().has_method("Projectile"):
		queue_free()
		#print_debug("DEAD")



