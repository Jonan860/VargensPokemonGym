function scrIsOutsideRoom() {
	return x < 0 or x > room_width + sprite_width or y < 0 or y > room_height + sprite_width
}