extends Node2D
@onready var tower = preload("res://Tower/tower_base.tscn")
var can_place = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = get_global_mouse_position().snapped(Vector2(32,32))
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and can_place:
		var instance = tower.instantiate()
		add_sibling(instance)
		instance.position = position
		queue_free()


func _on_area_2d_body_entered(body):
	can_place = false
	$Sprite2D.modulate = Color(1,0,0)


func _on_area_2d_body_exited(body):
	can_place = true
	$Sprite2D.modulate = Color(0,0,0)





func _on_area_2d_area_entered(area):
	if area.has_method("Tower_Body"):
		can_place = false
		$Sprite2D.modulate = Color(1,0,0)




func _on_area_2d_area_exited(area):
	if area.has_method("Tower_Body"):
		can_place = true
		$Sprite2D.modulate = Color(0,0,0)

