if(instance_number(obj_hypnosis_ring) == 1) {
	audio_stop_sound(sound_hypnosis)
	audio_sound_gain(global.background_music, 1, 0)
}

instance_destroy()