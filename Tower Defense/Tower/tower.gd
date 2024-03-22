extends Node2D
#@onready var projectile = preload("res://Projectiles/projectile.tscn")
#@onready var shoot_timer = $ShootTimer
#var enemy_instance
var projectile_instance
#var list_of_enemies = []
var component_list = []

# Called when the node enters the scene tree for the first time.
func _ready():
	print(component_list)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
#
#func _physics_process(delta):
	##if enemy_instance != null:
		##look_at(list_of_enemies.front().position)
		#pass#
	#
	##if enemy_instance == null:
		##list_of_enemies = get_overlapping_areas()
		##if list_of_enemies != null:
			##enemy_instance = list_of_enemies.front()
	#
			#
#
#
#func _on_area_entered(area):
	##if area.get_parent().has_method("Enemy"):
		##
		##enemy_instance = area.get_parent()
		##list_of_enemies.append(enemy_instance)
		##print_debug(list_of_enemies.size())
		##
		##if list_of_enemies.size() == 1:
		##	shoot_timer.start()
		#pass
		#
	#
#
#
#func _on_area_exited(area):
	##if area.get_parent().has_method("Enemy"):
		##list_of_enemies.erase(area.get_parent())
		#pass


#func _on_shoot_timer_timeout():
	#_shoot_projectile()
	#if enemy_instance != null:
	#	shoot_timer.start()

#func _shoot_projectile():
	#projectile_instance = projectile.instantiate()
	#add_sibling(projectile_instance)
	##projectile_instance.position = $Sprite2D/ShootPoint.position
	#projectile_instance.position = $Sprite2D/ShootPoint.global_position
	#projectile_instance.rotation = rotation
	##print_debug("SHOOT")

