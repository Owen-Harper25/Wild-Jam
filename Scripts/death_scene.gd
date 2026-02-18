extends CanvasModulate
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var button: Button = $Control/Button
@onready var bus_stop: Sprite2D = $"Bus stop"
@onready var animation_player_3: AnimationPlayer = $AnimationPlayer3

var pressed : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed = false
	animation_player.play("Bus stop")
	animation_player_3.play("Death")
	await animation_player.animation_finished
	animation_player.play("light beam")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	await animation_player_3.animation_finished
	SceneManager._change_scene("MAIN")

func _on_button_pressed() -> void:
	if pressed == false:
		pressed = true
		button.visible = false
		animation_player.play("light beam")
	pass # Replace with function body.
