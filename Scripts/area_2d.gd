extends Area2D


@export var color_entrada = Color(1,0,0)
@export var color_sortida = Color(0,1,0)

func _on_body_exited(body: Node2D) -> void:
	$ColorRect.color = color_sortida


func _on_body_entered(body: Node2D) -> void:
	$ColorRect.color = color_entrada
