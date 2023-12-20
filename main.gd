extends Node2D


var file
var content
var objet = Objets.new()
@export var sprite: AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	file = FileAccess.open("res://Dialogue.txt", FileAccess.READ)
	content = file.get_as_text()
	print(content.split("\n"))
	$AnimatedSprite2D.frame = 1
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if Input.is_action_just_pressed("ui_click"):
		$AnimatedSprite2D.frame = 0

		$TextBox.visible = false


func _on_node_2d_clicked_on_object():
	$TextBox.visible = true
	
