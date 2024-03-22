extends Node2D
@onready var projectile = preload("res://Projectiles/projectile.tscn")
@onready var shoot_timer = $ShootTimer
@onready var radar_node = preload("res://Objects/radar_node.tscn")
var projectile_instance



# Called when the node enters the scene tree for the first time.
func _ready():
	_connect_to_parent()
	
	#var radar_instance = radar_node.get_instance_id()
	#var radar_obj = instance_from_id(radar_instance)
	#print(radar_obj)
	#
	#radar_obj._enemy_detected.connect(_shoot_projectile())
func _connect_to_parent():
	get_parent().get_parent().component_list.append(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _shoot_projectile():
	#projectile_instance = projectile.instantiate()
	#add_sibling(projectile_instance)
	#projectile_instance.position = $Sprite2D/ShootPoint.global_position
	#projectile_instance.rotation = rotation
	pass

func _on_shoot_timer_timeout():
	_shoot_projectile()
