#extends CharacterBody2D
extends RigidBody2D

@onready var init_pos = position
var reset_flag = false

func _integrate_forces(state):
	if reset_flag:
		reset_flag = false
		var xform = state.get_transform()
		xform.origin = init_pos
		state.set_transform(xform)

func flip_ball_x(pos):
	linear_velocity = (position - pos)
	linear_velocity.x *= 2
	linear_velocity = linear_velocity.normalized() * Global.ball_speed
	Global.ball_speed += 50
	Global.player_speed += 50
	
func flip_ball_y(pos):
	linear_velocity = (position - pos)
	linear_velocity.y *= 2
	linear_velocity = linear_velocity.normalized() * Global.ball_speed
	Global.ball_speed += 10
	Global.player_speed += 10
		
func reset_ball():
	reset_flag = true
	var rand = RandomNumberGenerator.new()
	linear_velocity = Vector2((rand.randf()-0.5)*2, rand.randf()-0.5).normalized() * Global.ball_speed

func _ready():
	Global.ball_speed = 350
	var rand = RandomNumberGenerator.new()
	if Global.mode == 1:
		linear_velocity = Vector2((rand.randf()-0.5)*3, rand.randf()-0.5).normalized() * Global.ball_speed
	else:
		linear_velocity = Vector2((rand.randf()-0.5), -rand.randf()*3).normalized() * Global.ball_speed

