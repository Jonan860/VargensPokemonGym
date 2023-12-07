if(global.amber != id and global.amber.x >= 0) {
	if(abs(global.amber.x - x) + abs(global.amber.y - y) < 120) {
		if(!defeated) {
			speed = 0
			world_x = x; world_y = y;
			scr_goto_room(gym)
			global.enemy = id
			global.phase = PHASES.choosing
		}
	}
}