extends Control
var file



func _ready() -> void:
	add_to_group("sala")

	# Abrir y leer el archivo inyectamos
	
	
	file = FileAccess.open("res://new_script.gd", FileAccess.READ)
	if file:
		var script_content = file.get_as_text()
		script_content += "func ema():
	var i = 10
	while i :
		prints('ema',i)
		i -= 1
	prints('emanuel aqui estamos vanda ')"
	
		file.close()


	## Guardar el script en un archivo temporal
		var temp_file = FileAccess.open("res://temp_script.gd", FileAccess.WRITE)
		if temp_file:
			temp_file.store_string(script_content)
			temp_file.close()

		## Cargar el script desde el archivo temporal
			var script = load("res://temp_script.gd")
			if script:
				var instance = script.new()
				prints(instance.erro)
				instance._ready()
				instance._ready()
				instance = null
				prints(instance)
				
				var file_path = "res://temp_script.gd"
				# Usar DirAccess para eliminar el archivo
				var dir = DirAccess.open("res://")
				if dir:
					if dir.file_exists("temp_script.gd"):
						var error = dir.remove("temp_script.gd")
						if error == OK:
							print("Archivo eliminado exitosamente")
						else:
							print("Error al eliminar el archivo: %s" % error)
					else:
						print("El archivo no existe en el directorio especificado")
				else:
					print("Error al abrir el directorio")



func _process(delta: float) -> void:
	pass


func _on_salir_pressed() -> void:
	queue_free()
	pass # Replace with function body.
