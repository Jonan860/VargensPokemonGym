
if(thinking) {
	draw_sprite_ext(spr_amnesia, -1, x, y - struct.owner.sprite_height / 2, 1, 1, 0, c_black, 1)
} else if(audio_is_playing(sound_hit)) {
	draw_sprite(spr_hit, 0, struct.owner.x, struct.owner.y)
}

