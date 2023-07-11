extends Node2D

func reset_ball():
	get_node("Ball").reset_ball()
	Global.life -= 1
	if Global.life <= 0:
		get_tree().change_scene_to_file("res://nodes/main.tscn")

func _on_left_wall_body_entered(body):
	if body.name == "Ball":
		print("!!!!!!")
		reset_ball()
		Global.score1 -= 5 * Global.level

func _on_right_wall_body_entered(body):
	if body.name == "Ball":
		print("!!!!!!")
		reset_ball()
		Global.score2 -= 5 * Global.level

func _on_player_1_body_entered(body):
	if body.name == "Ball":
		get_node("Ball").flip_ball_x(get_node("player1").position)
		Global.score1 += 1 * Global.level


func _on_player_2_body_entered(body):
	if body.name == "Ball":
		get_node("Ball").flip_ball_x(get_node("player2").position)
		Global.score2 += 1 * Global.level

