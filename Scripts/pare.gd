extends CharacterBody2D

var velocitat := 200

func _ready() -> void:
	position = Vector2(0, 0)

func _process(delta: float) -> void:
	var direccio := Vector2.ZERO
	direccio = Input.get_vector("mou_esquerra", "mou_dreta", "mou_amunt", "mou_avall")
	velocity = direccio * velocitat
	move_and_slide()
	anima(velocity, delta)

func anima(velocitat: Vector2, delta: float) -> void:
	var velocitat_angular := 0.05
	
	$Pare/Fill.rotation += velocitat_angular * velocitat.x * delta
	$Pare/Fill2.rotation += velocitat_angular * velocitat.x * delta
