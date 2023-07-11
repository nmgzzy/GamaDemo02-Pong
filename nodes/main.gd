extends Node2D


func _on_quit_btn_pressed():
	get_tree().quit()


func _on_play_arkanoid_btn_pressed():
	Global.life = 3
	Global.score1 = 0
	Global.score2 = 0
	Global.level = 1
	Global.ball_speed = 350
	Global.player_speed = 380
	Global.mode = 2
	get_tree().change_scene_to_file("res://nodes/arkanoid.tscn")


func _on_play_pong_btn_pressed():
	Global.life = 3
	Global.score1 = 0
	Global.score2 = 0
	Global.level = 1
	Global.ball_speed = 350
	Global.player_speed = 380
	Global.mode = 1
	get_tree().change_scene_to_file("res://nodes/pong.tscn")
