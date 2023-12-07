function scr_amber_switch_pokemon() {
	if(global.turn = TURNS.Amber) {
		if(global.phase == PHASES.switchPokemon and path_index = -1) {
			path_start(path_Amber, 8, path_action_stop, 1)
			global.phase = PHASES.trainerMoving
		}

		if(room = room_jansson or room = room_husmusen or room = room_teddy_match) {
			if(global.phase = PHASES.trainerMoving and x > room_width+sprite_width) {
				global.phase = PHASES.pokeball
				path_end()
				pokeball = instance_create_depth(x, y, 0, obj_poke_ball)
				pokeball.owner = id
				x = match_x; y = match_y
				visible = 0
			}
		}
	}
}
