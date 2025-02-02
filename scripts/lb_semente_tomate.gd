extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Dados.sementes_de_tomate <= 9:
		$".".text = str("0", Dados.sementes_de_tomate)
	else:
		$".".text = str(Dados.sementes_de_tomate)
