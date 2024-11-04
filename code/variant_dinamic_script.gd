extends Control

var code_string = """extends Node # It can be any node

@export var data_export = 1

func _init():
	prints("My dynamic script running ", data_export)



func _process(delta: float) -> void:
	#prints("hi")   # warring
	pass
	"""




func _ready() -> void:
	
	

	
	#region script dinamico
	# Crear el script dinámicamente
	var script = GDScript.new()
	
	script.source_code = code_string
	print("script creado")
	#endregion 


	#region Compilar el script add_child
	
	
	if script.reload() == OK:
		var node = Node.new()
	
	# Asignar el script al nodo
		node.set_script(script)  # Assign the script to the node
		prints(node.get_script() , " yes / si , gdscript") # know if you have anything // saber si tiene el script el nodo
		node.name = "emma"  #Give it a nice name :)  // un lindo nombre al nodo
		
	# Agregar el nodo a la escena /// Add the node to the scene
		get_tree().root.add_child.call_deferred(node)
	else:
		print("Error al compilar el script  ///  Error compiling script")
	
#endregion


func _process(delta: float) -> void:
	pass
