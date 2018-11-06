extends Area2D
var startDrag = false
var startPosition
var stay
func _ready():
	startPosition = self.position
	set_process_input(true)


func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("LeftClick") and event.pressed:
		startDrag = true	
	if event.is_action_released("LeftClick") :
		startDrag = false
		if !stay:
			self.position = startPosition
func Drag():
	if startDrag:
		self.position = get_viewport().get_mouse_position()
	
func _process(delta):
	Drag()

func _on_Book1_body_entered(body):
	stay = true


func _on_Book1_body_exited(body):
	stay = false
