extends Node

const DEATH_SCENE = preload("res://Scenes/death_scene.tscn")
const MAIN = preload("res://Scenes/main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _change_scene(scene):
	var level
	if scene == "DEATH_SCENE":
		level = DEATH_SCENE
	elif scene == "MAIN":
		level = MAIN
	
	if level != null:
		TransitionScene.transition()
		await TransitionScene._on_transition_finished
		get_tree().change_scene_to_packed(level)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
