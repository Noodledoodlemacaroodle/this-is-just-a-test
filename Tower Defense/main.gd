extends Node2D
@onready var enemy = preload("res://Enemy/Soldier.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	$SpawnTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_timer_timeout():
	var instance = enemy.instantiate()
	instance.position = $Path2D.position
	$Path2D.add_child(instance)
	
	



