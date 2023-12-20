extends Node2D


var file
var content
var text_tab
var objet = Objets.new()
@export var sprite: AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	file = FileAccess.open("res://Dialogue.txt", FileAccess.READ)
	content = file.get_as_text()
	print(content.split("\n"))
	text_tab = content.split("\n")
	$AnimatedSprite2D.frame = 1
	$Porte.get_node("Sprite2D").set_texture(load("res://Assets/IMG_20231220_150325.png"))
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if Input.is_action_just_pressed("ui_click"):
		$AnimatedSprite2D.frame = 0

		$TextBox.visible = false


func _on_node_2d_clicked_on_object():
	$TextBox.visible = true
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	

func _on_pnj_1_clicked_on_object():
	pass
