#extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Interactable

export var light : NodePath
export var on_by_default = true
export var energy_when_on = 1
export var energy_when_off = 0

onready var light_node = get_node(light)

var on = on_by_default

func _ready():
	light_node.set_param(Light.PARAM_ENERGY, energy_when_on)

func interact():
	on = !on
	light_node.set_param(Light.PARAM_ENERGY, energy_when_on if on else energy_when_off)
