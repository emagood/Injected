extends Control

var code_string = """extends Node # It can be any node

@export var data_export = 1

func _init():
	prints("My dynamic script running ", data_export)


func _ready() -> void:
	prints("hola desde ready")

func ema():
	queue_free()

func _process(delta: float) -> void:
	prints("hi desde process")   # warring
	ema()
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
		#add_child(node)
		get_tree().root.add_child.call_deferred(node)
	else:
		print("Error al compilar el script  ///  Error compiling script")
	
#endregion


func _process(delta: float) -> void:
	pass


func _on_salir_pressed() -> void:
	queue_free()
	pass # Replace with function body.
