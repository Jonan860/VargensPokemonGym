
if(speed == 0) {
	if(!miss) {
		move_towards_point(opponent.x, opponent.y, PROJECTILE_SPEED)
	} else {
		var topRight = choose(0, 1)
		move_towards_point(opponent.x - opponent.sprite_xoffset + topRight * opponent.sprite_width, opponent.y - opponent.sprite_yoffset + (1 - topRight) * opponent.sprite_height, PROJECTILE_SPEED)
	}
}