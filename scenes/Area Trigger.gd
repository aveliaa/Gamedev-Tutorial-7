extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (String) var sceneName = "Level 1"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_area_trigger_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://Scenes/" + sceneName + ".tscn"))
