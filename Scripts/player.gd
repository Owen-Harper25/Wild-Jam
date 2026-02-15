extends RigidBody2D



func _process(_delta: float) -> void:
	#set_bounce(0.5)
	#set_friction(0.2)
	#print(linear_velocity.y)
	pass

func launch(Vector2) -> void:
	apply_impulse($VectorCreator.vector, position)
