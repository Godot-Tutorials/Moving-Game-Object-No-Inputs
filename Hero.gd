extends Sprite

var gameWidth: int
var gameHeight: int 
var spriteWidth: int
var spriteHeight: int

var velocity: float

func _enter_tree():
	setupVelocity()
	setupSprite()
	setupGameWindow()
	positionLeftCenter()

# Avoid this in Game Production
func _physics_process(delta):
	moveRight(delta)

func moveRight(delta: float) -> void:
	position.x += delta * velocity

func setupVelocity() -> void:
	velocity = 100.0











func setupSprite() -> void:
	spriteWidth = get_texture().get_width()
	spriteHeight = get_texture().get_height()

func setupGameWindow() -> void:
	gameWidth = OS.get_window_size().x
	gameHeight = OS.get_window_size().y

func positionTopCenter() -> void:
	self.position.x = gameWidth / 2
	self.position.y = spriteHeight / 2

func positionBottomCenter() -> void:
	self.position.x = gameWidth / 2
	self.position.y = gameHeight - (spriteHeight / 2)

func positionLeftCenter() -> void:
	self.position.x = spriteWidth / 2
	self.position.y = gameHeight / 2

func positionRightCenter() -> void:
	self.position.x = gameWidth - (spriteWidth / 2)
	self.position.y = gameHeight / 2

func positionMiddle() -> void:
	self.position.x = gameWidth / 2
	self.position.y = gameHeight / 2
