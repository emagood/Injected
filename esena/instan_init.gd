extends Control
var file


func _ready() -> void:


	## Primero, cargamos el script usando la función load
	var script_path = "res://code/gdtest.gd"
	var script = load(script_path)
	var instance
	if script:
		instance = script.new()
		instance._ready()
	## Aquí puedes llamar a las funciones del script como necesites
	else:
		
		print("Error al cargar el script: %s" % script_path)
		
	add_child(instance) ## importante  ??? ready 2 veces :)

func _process(delta: float) -> void:
	pass


func _on_salir_pressed() -> void:
	queue_free()
	pass # Replace with function body.
