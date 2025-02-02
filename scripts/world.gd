extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$fazendeira/Camera2D/dia_noite/AnimationPlayer.play("ciclo_do_dia")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("Hora dos Games")
	pass
