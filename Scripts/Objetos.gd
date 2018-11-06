extends Area2D
var startDrag = false

func _ready():
    set_process_input(true)


func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("LeftClick") and event.pressed:
		startDrag = true	
	if event.is_action_released("LeftClick") :
		startDrag = false
		
func Drag():
	if startDrag:
		self.position = get_viewport().get_mouse_position()
	
func _process(delta):
	Drag()