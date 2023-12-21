extends TextureRect



func _on_mouse_entered():
	position.x -= 500


func _on_mouse_exited():
	position.x += 500
