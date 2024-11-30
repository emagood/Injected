extends Node



func _ready() -> void:
	prints(" prueba de carga exotpsa , exitosa del sccript _ready")
	



func _init() -> void:
	prints("prueba de script exitosa se cargo y ejecuta con _init ")
	


func _process(delta: float) -> void:
	prints("la prueba de prosses es exitosa _process")
	ema()


func ema():
	prints("prueba funcion ema() exitosa ema()")
	queue_free()
