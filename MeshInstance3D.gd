extends MeshInstance3D

# Speed of movement
var speed = 5.0

func _process(delta):
	# Movement vector
	var movement = Vector3()

	# Check arrow key presses
	if Input.is_action_pressed("move_forward"):
		movement += -transform.basis.z
	if Input.is_action_pressed("move_backward"):
		movement += transform.basis.z
	if Input.is_action_pressed("move_left"):
		movement += -transform.basis.x
	if Input.is_action_pressed("move_right"):
		movement += transform.basis.x

	# Normalize the movement vector to maintain consistent speed
	movement = movement.normalized() * speed * delta

	# Move the object
	translate(movement)
