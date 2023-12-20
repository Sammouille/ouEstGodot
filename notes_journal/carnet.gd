extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	"SignalBus.entrée_crane.connect(afficher_crane)
	SignalBus.entrée_oignon.connect(afficher_oignon)
	SignalBus.entrée_couteau.connect(afficher_couteau)
	SignalBus.entrée_chapeau.connect(afficher_chapeau)
	SignalBus.entrée_jumelles.connect(afficher_jumelles)
	SignalBus.entrée_glacoun.connect(afficher_glacoun)
	SignalBus.entrée_vin.connect(afficher_vin)
	SignalBus.entrée_fleurs.connect(afficher_fleurs)
	SignalBus.entrée_cham.connect(afficher_cham)
	SignalBus.entrée_menottes.connect(afficher_menottes)
	SignalBus.entrée_joconde.connect(afficher_joconde)
	SignalBus.entrée_pnj1.connect(afficher_pnj1)
	SignalBus.entrée_pnj2.connect(afficher_pnj2)
	SignalBus.entrée_pnj3.connect(afficher_pnj3)
	SignalBus.entrée_pnj4.connect(afficher_pnj4)
	SignalBus.entrée_masque_sourire.connect(afficher)
	SignalBus.entrée_masque_triste.connect(afficher)
"
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func afficher():
	
	
	
	print("pouet")


	



#hide()


func Carnet_on_stair_clicked_on_object():
	$TextureRect/VBoxContainer/entrée_de_journal2.show()
