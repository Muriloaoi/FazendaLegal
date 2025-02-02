extends CharacterBody2D

const SPEED = 100.0


func _physics_process(delta: float) -> void:
	# Obtém o vetor de direção com base nas teclas configuradas
	var direction = Input.get_vector("esquerda", "direita", "cima", "baixo")
	
	# Atualiza a velocidade do personagem com base na direção e velocidade
	velocity = direction * SPEED

	# Define as animações com base no movimento
	if direction != Vector2.ZERO:
		$AnimatedSprite2D.play("walk")
		if direction.x != 0:
			# Inverte o sprite para virar na direção horizontal
			$AnimatedSprite2D.flip_h = direction.x < 0
	else:
		$AnimatedSprite2D.play("idle")


	# Move o personagem usando a física
	move_and_slide()
	


func _on_semente_de_tomate_body_entered(body):
	Dados.sementes_de_tomate += 1
