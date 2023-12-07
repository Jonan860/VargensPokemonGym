if(!defeated and visible) {
	if(room == roomWorld) {
		speed = 0
		world_x = x; world_y = y
		global.amber.moveable = 0
		if(saveCondition()) {
			save_game_before_battle()
		}
		sprite_index = sprMatch
		scr_goto_room(roomMatch)
		global.enemy = id
		global.turn = TURNS.enemy
		global.phase = PHASES.choosing
	}
}