extends Node2D
@onready var enemy = preload("res://Enemy/Soldier.tscn")
@onready var credits_label = $"Credtis label"
var credits = 150
# Called when the node enters the scene tree for the first time.

func _ready():
	$SpawnTimer.start()
	credits_label.text = "Credits: " + str(credits)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_timer_timeout():
	var instance = enemy.instantiate()
	instance.position = $Path2D.position
	$Path2D.add_child(instance)
	
	





func _on_button__purchase():
	credits -= 100
	credits_label.text = "Credits: " + str(credits)


func _defeat(value):
	credits += value
	if credits == null:
		credits = 0
	
	credits_label.text = "Credits: " + str(credits)


func _on_soldier__unit_defeat(value):
	credits += value
	
	credits_label.text = "Credits: " + str(credits)
	
