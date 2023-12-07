if(global.phase == PHASES.pokeball) {
	image_xscale *= 0.1; image_yscale *= 0.1;
	switch(global.turn) {
		case TURNS.enemy: 
			path_start(path_ball_opponent, 10, path_action_stop, 1)
			owner = 0; break;
		case TURNS.Amber :
			path_start(path_ball_self, 10, path_action_stop, 1)
	}
}
