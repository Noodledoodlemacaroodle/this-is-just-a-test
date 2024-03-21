extends PathFollow2D
#ar main = "res://main.tscn"
var speed = 100
var value = 50

signal _unit_defeat(value)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#var my_function = func(value)
	#_unit_defeat.connect(func(value):
		#main._defeat()
		#)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += speed * delta
	
	if progress_ratio >= 1:
		queue_free()

func Enemy():
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent().has_method("Projectile"):
		_soldier_death()
		
	
		#print_debug("DEAD")



func _soldier_death():
		var main = get_parent().get_parent()
		var lambda_func = func(value) : main._defeat(value)
		lambda_func.call(value)
		queue_free()
