

if(object.alive and global.phase == PHASES.choosing and global.turn == TURNS.Amber) {
	if(global.amber.active_pokemon != noone) {
		global.amber.active_pokemon.visible = 0;
		global.amber.active_pokemon.active = 0;
	}
	
	global.amber.active_pokemon = object
	global.phase = PHASES.switchPokemon

	with(obj_starters_button) instance_destroy();
	with(obj_move_button) instance_destroy()
}



