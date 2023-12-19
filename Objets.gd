extends Node2D

var pickable:bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if pickable:
		if Input.is_action_just_pressed("ui_click"):
			print("Objet cliqué !")


func _on_mouse_entered():
	pickable = true

func _on_mouse_exited():
	pickable = false
