 
'''### Do not change this node 
Do not use it in the editor 
it always gives error is normal, it is a fragment

'''

extends Node
@export var erro = 120
@onready var grupo #= get_tree().get_first_node_in_group("sala")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prints("new script ")
	ema()
	pass # Replace with function body.

func grupos():
	prints("grupos")
	grupo = get_tree().get_first_node_in_group("sala")

#func ema():
	#prints("emanuel",erro)
func _exit_tree() -> void:
	prints("queque free exit tree script dinamico")
