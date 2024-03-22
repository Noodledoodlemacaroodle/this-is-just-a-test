extends Area2D

var list_of_enemies = []
var enemy_instance

signal ready_to_fire()
# Called when the node enters the scene tree for the first time.
func _ready():
	_connect_to_parent()


func _connect_to_parent():
	get_parent().component_list.append(self)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if enemy_instance != null:
		get_parent().look_at(list_of_enemies.front().position)
		



func _on_area_entered(area):
	if area.get_parent().has_method("Enemy"):
		_enemy_detected(area)
		


func _on_area_exited(area):
	if area.get_parent().has_method("Enemy"):
		list_of_enemies.erase(area.get_parent())

func _enemy_detected(enemy):
		enemy_instance = enemy.get_parent()
		list_of_enemies.append(enemy_instance)
		ready_to_fire.emit()
