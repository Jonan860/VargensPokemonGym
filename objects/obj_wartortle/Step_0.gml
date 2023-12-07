event_inherited()
if(active and global.turn == TURNS.enemy) {
	if(global.phase == PHASES.attack) {
		var n = choose(0, 1, 1, 1)
		if(n) {
			var bubble = instance_create_depth(x + 300, y + 100, 0, obj_bubble)
			with(bubble) {
				damage = STANDARD_MOVEDAMAGE
				miss = 0
				image_angle += 180
				image_xscale = 0.8; image_yscale = 0.8
			}
		}
		else if(n == 0) {
			defence_bonus = min(defence_bonus + 1, 5)
			global.move = MOVES.defenceCurl
			audio_play_sound(sound_defence_curl, 0, 0)
		}
	}
	if(global.phase == MOVES.defenceCurl) {
		if(!audio_is_playing(sound_defence_curl)) {
			global.phase = PHASES.choosing
			global.turn = TURNS.Amber
		}
	}
}



