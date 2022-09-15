# HUD.gd
extends Control


## Atributos Onready
onready var etiqueta_vidas = $ContenedorVIdas/Cantidad
onready var etiqueta_monedas_oro = $ContenedorMonedasOro/Cantidad


func _ready() -> void:
	# warning-ignore:return_value_discarded
	Eventos.connect("actualizar_hud", self, "actualizar_hud")
	actualizar_hud()


func actualizar_hud() -> void:
	etiqueta_vidas.text = "%s" % DatosJuego.vidas
	etiqueta_monedas_oro.text = "%s" % DatosJuego.monedas_oro
