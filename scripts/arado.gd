extends Area2D

var area_arada = "nao"
var plantado = false
var cresceu = "nao"

func _ready():
	$tomate2/anim_tomato.hide()
	pass

func _process(delta):
	
	
	
	if area_arada == "sim" and Dados.sementes_de_tomate >= 1:
		if Input.is_action_just_pressed("interacao") and not plantado:
			
			Dados.sementes_de_tomate -= 1
			$tomate2/anim_tomato.show()  # Mostrar o nodo do tomate
			$tomate2/anim_tomato.play("tomate_crescendo")  # Começar a animação do tomate (ajuste o nome da animação conforme necessário)
			plantado = true
	
	if cresceu == "sim":
		if area_arada == "sim" and Input.is_action_just_pressed("acao"):
			$tomate2/anim_tomato.hide()
			$tomate2/anim_tomato.stop()
			cresceu = "nao"
			plantado = false
			

func _on_body_entered(body):
	area_arada = "sim"

func _on_body_exited(body):
	area_arada = "nao"
	


func _on_anim_tomato_animation_finished():
	cresceu = "sim"
	
