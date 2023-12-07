
if(audio_is_playing(sound_sing)){
	ang += (2 * pi) / (period * room_speed)
	x = room_width / 2 + room_width / 3 * cos(ang)
	y = room_height/2 + room_height / 3 * sin(ang)
} else {
	if(global.move == MOVES.sing and global.turn == TURNS.enemy and global.phase == PHASES.attackHit) {
		scr_put_to_sleep(global.amber.active_pokemon)
	}

	audio_resume_sound(global.background_music)
	global.phase = PHASES.choosing
	global.turn = TURNS.Amber
	instance_destroy()
}