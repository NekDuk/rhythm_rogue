extends CharacterBody2D

@export var speed: float = 300.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("workin!")

# Called every frame. 'deltsa' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	velocity.x = Input.get_axis("move_left", "move_right") * speed
	velocity.y = Input.get_axis("move_down", "move_up") * speed
	move_and_slide()
