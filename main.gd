extends Node2D


var file
var content_item
var content_npc
var text_tab
var text_tab_npc
var objet_trouve 
var timed = Timer.new()
var mask_sourire_appuye = false
var mask_bad_appuye = false
var dialogue_obtenu


var objet = Objets.new()
@export var sprite: AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	file = FileAccess.open("res://Dialogue.txt", FileAccess.READ)
	content_item = file.get_as_text()
	print(content_item.split("\n"))
	text_tab = content_item.split("\n")
	file = FileAccess.open("res://Dialogue_NPC.txt", FileAccess.READ)
	content_npc = file.get_as_text()
	print(content_npc.split("\n"))
	text_tab_npc = content_npc.split("\n")
	$AnimatedSprite2D.frame = 1
	timed.one_shot = true
	add_child(timed)
	$AudioStreamPlayer.playing = true
	$Porte.get_node("Sprite2D").set_texture(load("res://Assets/Door.png"))
	$Mask_smile.get_node("Sprite2D").set_texture(load("res://Assets/Mask_happy.png"))
	$Mask_sad.get_node("Sprite2D").set_texture(load("res://Assets/Mask_sad.png"))
	$Skull.get_node("Sprite2D").set_texture(load("res://Assets/Skull.png"))
	$Flower.get_node("Sprite2D").set_texture(load("res://Assets/Flower.png"))
	$Onions.get_node("Sprite2D").set_texture(load("res://Assets/Onion.png"))
	$Glacoun.get_node("Sprite2D").set_texture(load("res://Assets/Glacoun.png"))
	$Handcuff.get_node("Sprite2D").set_texture(load("res://Assets/Handcuff.png"))
	$Hat.get_node("Sprite2D").set_texture(load("res://Assets/Hat.png"))
	$Kirby.get_node("Sprite2D").set_texture(load("res://Assets/Kirby.png"))
	$Knife.get_node("Sprite2D").set_texture(load("res://Assets/Knife.png"))
	$Painting.get_node("Sprite2D").set_texture(load("res://Assets/Painting.png"))
	$Pocket.get_node("Sprite2D").set_texture(load("res://Assets/Pocket.png"))
	$Popcorn.get_node("Sprite2D").set_texture(load("res://Assets/Popcorn.png"))
	$Ptitcham.get_node("Sprite2D").set_texture(load("res://Assets/PtitCham.png"))
	$Stair.get_node("Sprite2D").set_texture(load("res://Assets/Stair.png"))
	$Stoul.get_node("Sprite2D").set_texture(load("res://Assets/Stoul.png"))
	$Thierry.get_node("Sprite2D").set_texture(load("res://Assets/Thierry.png"))
	$Jumelle.get_node("Sprite2D").set_texture(load("res://Assets/Jumelle.png"))
	$Wine.get_node("Sprite2D").set_texture(load("res://Assets/Miam_du_vin_3.png"))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if timed.time_left == 0:
		
		mask_bad_appuye = false
		mask_sourire_appuye = false
	if Input.is_action_just_pressed("ui_click"):
		$TextBox/Panel/Nom.text = ""
		
		$TextBox.visible = false
		if dialogue_obtenu == 1:
			$TextBox/Panel/Description.text = text_tab_npc[10]
			make_sprite_and_textbox_visible()
		if dialogue_obtenu == 2:
			$TextBox/Panel/Description.text = text_tab_npc[11]
			make_sprite_and_textbox_visible()
		if dialogue_obtenu == 3:
			$TextBox/Panel/Description.text = text_tab_npc[12]
			make_sprite_and_textbox_visible()
		if dialogue_obtenu == 4:
			$TextBox/Panel/Description.text = text_tab_npc[13]
			make_sprite_and_textbox_visible()
		if dialogue_obtenu == 5:
			$TextBox/Panel/Description.text = text_tab_npc[14]
			make_sprite_and_textbox_visible()
		$AnimatedSprite2D.visible = false
		dialogue_obtenu = 0


func make_sprite_and_textbox_visible():
	$AnimatedSprite2D.visible = true
	$TextBox.visible = true

func _on_pnj_1_clicked_on_object():
	SignalBus.entrée_journal.emit()


func _on_mask_smile_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	
	$AnimatedSprite2D.frame = 11
	SignalBus.entrée_journal.emit("masque_sourire")
	if timed.time_left == 0:
		timed.start(3)
	mask_sourire_appuye = true


func _on_mask_sad_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	
	$AnimatedSprite2D.frame = 12
	
	if timed.time_left == 0:
		timed.start(3)
	mask_bad_appuye = true

func _on_skull_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	
	$AnimatedSprite2D.frame = 0


func _on_flower_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[14]
	$TextBox/Panel/Description.text = text_tab[15]
	
	$AnimatedSprite2D.frame = 4

func _on_onions_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[4]
	$TextBox/Panel/Description.text = text_tab[5]
	
	$AnimatedSprite2D.frame = 2

func _on_glacoun_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[12]
	$TextBox/Panel/Description.text = text_tab[13]

	$AnimatedSprite2D.frame = 8

func _on_handcuff_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[18]
	$TextBox/Panel/Description.text = text_tab[19]
	
	$AnimatedSprite2D.frame = 9


func _on_hat_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[8]
	$TextBox/Panel/Description.text = text_tab[9]
	
	$AnimatedSprite2D.frame = 5


func _on_kirby_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	
	$AnimatedSprite2D.frame = 7

func _on_knife_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[6]
	$TextBox/Panel/Description.text = text_tab[7]
	
	$AnimatedSprite2D.frame = 3


func _on_painting_clicked_on_object():
	make_sprite_and_textbox_visible()

	$TextBox/Panel/Nom.text = text_tab[22]
	$TextBox/Panel/Description.text = text_tab[23]
	if (mask_bad_appuye && mask_sourire_appuye):
		$TextBox/Panel/Description.text = "Haha ! Je peux enfin la voler !"
		$Painting.visible = false
	$AnimatedSprite2D.frame = 15
	
	

func _on_pocket_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[0]
	$TextBox/Panel/Description.text = text_tab[1]
	
	$AnimatedSprite2D.frame = 13


func _on_popcorn_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[2]
	$TextBox/Panel/Description.text = text_tab[3]
	
	$AnimatedSprite2D.frame = 1


func _on_ptitcham_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[16]
	$TextBox/Panel/Description.text = text_tab[17]
	
	$AnimatedSprite2D.frame = 10


func _on_stair_clicked_on_object():
	$Knife.visible = true
	$Stair.visible = false

func _on_stoul_clicked_on_object():
	pass # Replace with function body.


func _on_thierry_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[24]
	$TextBox/Panel/Description.text = text_tab[25]
	
	$AnimatedSprite2D.frame = 14


func _on_jumelle_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[10]
	$TextBox/Panel/Description.text = text_tab[11]
	
	$AnimatedSprite2D.frame = 6


func _on_pnj_toilette_clicked_on_object():
	make_sprite_and_textbox_visible()
	$AnimatedSprite2D.visible = false
	$TextBox/Panel/Nom.text = text_tab_npc[0]
	$TextBox/Panel/Description.text = text_tab_npc[1]
	dialogue_obtenu = 1


func _on_pnj_a_rbre_clicked_on_object():
	make_sprite_and_textbox_visible()
	$AnimatedSprite2D.visible = false
	$TextBox/Panel/Nom.text = text_tab_npc[2]
	$TextBox/Panel/Description.text = text_tab_npc[3]
	dialogue_obtenu = 2

func _on_pnj_popcorn_clicked_on_object():
	make_sprite_and_textbox_visible()
	$AnimatedSprite2D.visible = false
	$TextBox/Panel/Nom.text = text_tab_npc[4]
	$TextBox/Panel/Description.text = text_tab_npc[5]
	dialogue_obtenu = 3

func _on_pnj_coulisse_clicked_on_object():
	make_sprite_and_textbox_visible()
	$AnimatedSprite2D.visible = false
	$TextBox/Panel/Nom.text = text_tab_npc[6]
	$TextBox/Panel/Description.text = text_tab_npc[7]
	dialogue_obtenu = 4

func _on_pnj_cul_clicked_on_object():
	make_sprite_and_textbox_visible()
	$AnimatedSprite2D.visible = false
	$TextBox/Panel/Nom.text = text_tab_npc[8]
	$TextBox/Panel/Description.text = text_tab_npc[9]
	dialogue_obtenu = 5

func _on_porte_clicked_on_object():
	$Porte.visible = false
	$Wine.visible = true

func _on_wine_clicked_on_object():
	make_sprite_and_textbox_visible()
	$TextBox/Panel/Nom.text = text_tab[10]
	$TextBox/Panel/Description.text = text_tab[11]
	
	$AnimatedSprite2D.frame = 16
