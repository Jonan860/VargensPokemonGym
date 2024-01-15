if(!hasHit) {
	with(struct.owner) {
		var varopponent = other.opponent
		if(speed == 0) {
			switch(global.phase) {
				case PHASES.attackHit: move_towards_point(varopponent.x, varopponent.y, PROJECTILE_SPEED) break;
				case PHASES.attackMiss: move_towards_point(room_width/2, varopponent.y + varopponent.sprite_width, PROJECTILE_SPEED) break;
			}
		}


		if(distance_to_object(varopponent) < distance_to_point(xstart, ystart)) {
			with(other) {
				hasHit = 1;
				alarm[0] = hitDurationSec * room_speed
			}
			audio_play_sound(sound_hit, 0, 0)
			x = xstart; y = ystart
			speed = 0
		}
	}
}
