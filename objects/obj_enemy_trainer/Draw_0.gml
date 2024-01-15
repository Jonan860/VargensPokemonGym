if(scrContains(room, roomMatch, roomWorld)) {
	draw_self()
	if(global.phase == PHASES.defeated) {
		var varBubble =	global.turn == TURNS.enemy ? sprDefeatBubble : sprVictoryBubble
		draw_sprite_ext(varBubble, -1, x + sprite_width / 2, y - sprite_height / 2, 1, 1, 0, c_white, 1)
	}
	 
}