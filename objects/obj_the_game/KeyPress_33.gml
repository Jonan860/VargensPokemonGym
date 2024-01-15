operaTextEraser()
if(!instance_exists(obj_ailment_animator) and !instance_exists(obj_animator) and ( (global.turn == TURNS.Amber and global.phase == PHASES.choosing) or global.phase == PHASES.world) ) {
	save_game()
} else {
	audio_play_sound(sound_error_button, 0, 0)
}
