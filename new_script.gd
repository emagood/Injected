extends Node
@export var erro = 120
@onready var grupo = get_tree().get_first_node_in_group("sala")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prints("new script ")
	ema()
	#grupo = get_tree().get_first_node_in_group("sala")
	#if !grupo:
	grupos()
	prints("mejor no lobbuy")
	prints(grupo)
	queue_free()
	pass # Replace with function body.

func grupos():
	prints("grupos")
	grupo = get_tree().get_first_node_in_group("sala")

#func ema():
	#prints("emanuel",erro)
func _exit_tree() -> void:
	prints("adios script dinamico")
