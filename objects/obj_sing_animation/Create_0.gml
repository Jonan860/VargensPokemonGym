enemyImageTransform = method(undefined, doNothing)

event_inherited()

if(global.phase == PHASES.attackMiss) {
	audio_stop_sound(sound_sing)
	audio_play_sound(sound_cow, 0, 0)
}	
		
for(var i = 0; i < 12; i += 1) {
	instance_create_depth(room_width / 2 + room_width / 4 * cos(pi / 6 * i), room_height / 2 + room_height / 4 * sin(pi / 6 * i), 0, obj_note)
}