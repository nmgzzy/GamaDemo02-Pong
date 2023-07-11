extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var cnt = $container.get_child_count()
	if cnt == 0:
		get_tree().change_scene_to_file("res://nodes/finish_scene.tscn")


func _on_player_body_entered(body):
	if body.name == "Ball":
		$Ball.flip_ball_y($player.position)


func _on_down_wall_body_entered(body):
	if body.name == 'Ball':
		get_tree().change_scene_to_file("res://nodes/main.tscn")
