extends Control


func _on_acto_1_pressed() -> void:
	var menu = preload("res://esena/file_load.tscn").instantiate()
	add_child(menu)
	await get_tree().create_timer(3).timeout



func _on_acto_2_pressed() -> void:
	var menu = preload("res://esena/instan_init.tscn").instantiate()
	add_child(menu)
	await get_tree().create_timer(3).timeout
