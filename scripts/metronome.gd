extends AnimatedSprite2D

@export var bpm: int = 100
@export var beats_per_measure: int = 4 
@export var simple_meter: bool = true
@export var color: Color = Color(255, 255, 255)
var timer = 0
var currentBeat = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed_scale = bpm / 60.0
	modulate = color
	play("4-4")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	if timer >= 60.0 / bpm:
		timer = 0
		currentBeat += 1
		print("beat " + str(currentBeat))
		
	if currentBeat >= beats_per_measure:
		currentBeat = 0
		measure_hit()

func measure_hit():
	print("On beat!")
