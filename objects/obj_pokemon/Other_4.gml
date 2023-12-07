if(id == global.amber.active_pokemon) {
	if(isBattleRoom(room) and global.phase != PHASES.defeated) {
		with(obj_move_button){instance_destroy()}
		//scr_create_move_buttons()
	}
	if(scrContains(room, jansson_husmus_gym, room_teddy_gym)) {
		visible = 0
	}
}