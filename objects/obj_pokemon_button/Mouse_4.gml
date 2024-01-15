

if(object.alive and global.phase == PHASES.choosing and global.turn == TURNS.Amber) {
	with(global.amber.active_pokemon) {
		action_bar = max_action_bar / 2
		visible = 0;
		active = 0;
	}
	global.amber.active_pokemon = object

	global.phase = PHASES.switchPokemon

	with(obj_pokemon_button) instance_destroy();
	with(obj_move_button) instance_destroy()
}



