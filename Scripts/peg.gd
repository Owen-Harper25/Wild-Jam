extends Area2D


func _on_area_entered(area: Area2D) -> void:
	if area.has_method("launch"):
		print("Pegged")


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("launch"):
		print(body.linear_velocity.y)
		if body.linear_velocity.y > -300:
			print("attatch")
			
