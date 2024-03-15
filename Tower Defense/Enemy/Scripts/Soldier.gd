extends PathFollow2D
#ar main = "res://main.tscn"
var speed = 100
var value = 50

signal _unit_defeat(value)
# Called when the node enters the scene tree for the first time.
func _ready():
	var main = get_parent().get_parent()
	_unit_defeat.connect(main._defeat(value))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += speed * delta
	
	if progress_ratio >= 1:
		queue_free()

func Enemy():
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent().has_method("Projectile"):
		_unit_defeat.emit()
		queue_free()
		#print_debug("DEAD")






func _on__unit_defeat(value):
	pass # Replace with function body.
