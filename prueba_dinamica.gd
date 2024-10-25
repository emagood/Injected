extends Control
var file

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("sala")







#
#
	## Primero, cargamos el script usando la función load
	#var script_path = "res://core/new_script.gd"
	#var script = load(script_path)
#
	#if script:
		#var instance = script.new()
		#instance._ready()
	## Aquí puedes llamar a las funciones del script como necesites
	#else:
		#print("Error al cargar el script: %s" % script_path)
#





	# Abrir y leer el archivo
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





	# Guardar el script en un archivo temporal
		var temp_file = FileAccess.open("res://temp_script.gd", FileAccess.WRITE)
		if temp_file:
			temp_file.store_string(script_content)
			temp_file.close()

		# Cargar el script desde el archivo temporal
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









				
				
				
				
				
				
				#var file_path = "user://temp_script.gd"
				#if FileAccess.file_exists(file_path):
					#var result = DirAccess.open(file_path)
					#result.remove(file_path)
					#print("Archivo eliminado exitosamente")
#
				#else:
					#print("El archivo no existe")
					#
					#
					#
					

			# Aquí puedes llamar a las funciones del script como necesites
			else:
				print("Error al cargar el script")
		else:
			print("No se pudo crear el archivo temporal")
	else:
		print("No se pudo abrir el archivo")
		

	
	
	
	
	
	
	
	## Primero, cargamos el archivo
	#
#
	#file = FileAccess.open("res://core/new_script.gd", FileAccess.READ)
	#var script_content = file.get_as_text()
	#file.close()
#
	## Creamos una instancia del script
	#var script = GDScript.new()
	#var load_result = script.load_source_code(script_content)
	#if load_result == OK:
		#script.reload()
		#var instance = script.new()
		#instance._init()
		## Aquí puedes llamar a las funciones del script como necesites
	#else:
		#print("Error al cargar el script: %s" % load_result)
pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
