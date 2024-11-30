extends Control


func _on_acto_1_pressed() -> void:
	var menu = preload("res://code/Test_file_script.tscn").instantiate()
	add_child(menu)
	await get_tree().create_timer(3).timeout



func _on_acto_2_pressed() -> void:
	var menu = preload("res://esena/instan_init.tscn").instantiate()
	add_child(menu)
	await get_tree().create_timer(3).timeout


func _on_acto_3_pressed() -> void:
	var menu = preload("res://code/Test_variant_dinamic.tscn").instantiate()
	add_child(menu)
	await get_tree().create_timer(3).timeout
