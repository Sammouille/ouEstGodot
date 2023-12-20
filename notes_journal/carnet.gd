extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.entrée_journal.connect(afficher)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func afficher():
	print("pouet")

	$TextureRect/VBoxContainer/entrée_de_journal2.show()

#hide()
