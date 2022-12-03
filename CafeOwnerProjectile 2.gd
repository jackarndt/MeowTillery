extends KinematicBody2D

var movement = Vector2()
const SPEED = 1
export var damage = 2
func _physics_process(delta):
	var collision = move_and_collide(movement * SPEED * delta)
	if collision:
		if collision.collider.name == "Player":
			collision.collider._die()
		queue_free()
	else:
		queue_free()
