extends Node
var enemy_instance
var list_of_enemies = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func physics_process(delta):
	if enemy_instance != null:
		get_node(".").look_at(list_of_enemies.front().position)
		
		get_node(".").
