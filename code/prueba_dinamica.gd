extends Control
var file
var script_content
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("sala")
	# Abrir y leer el archivo
	file = FileAccess.open("res://new_script.gd", FileAccess.READ)
	if file:
		script_content = file.get_as_text()
		script_content += "func ema():
	var i = 10
	while i :
		prints('injected',i)
		i -= 1
	prints('script injected ')"
	


	# Guardar el script en un archivo temporal
		var temp_file = FileAccess.open("res://temp_script.gd", FileAccess.WRITE)
		if temp_file:
			temp_file.store_string(script_content)
			temp_file.close()

		# Cargar el script desde el archivo temporal
			var script = load("res://temp_script.gd")
			if script:
				var instance = script.new()
				#prints(instance.erro)
				#instance._ready()
				#instance._ready()
				add_child(instance)
				#instance = null
				prints(instance)
				
############ QUITAMOS EL SCRIPT TEMPORAL DEL DISCO
				var file_path = "res://temp_script.gd"
				# Usar DirAccess para eliminar el archivo
				var dir = DirAccess.open("res://")
				if dir:
					if dir.file_exists("temp_script.gd"):
						var error = dir.remove("temp_script.gd")
						if error == OK:
							print("Archivo eliminado exitosamente de res//")
						else:
							print("Error al eliminar el archivo de res//: %s" % error)
					else:
						print("El archivo no existe en el directorio especificado")
				else:
					print("Error al abrir el directorio res//")

			else:
				print("Error al cargar el script injectado")
		else:
			print("No se pudo crear el archivo temporal en res//")
	else:
		print("No se pudo abrir el archivo que contiene codigo")
		
pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
