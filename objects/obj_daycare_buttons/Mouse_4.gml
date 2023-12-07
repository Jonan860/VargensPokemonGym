if(visible){
	global.phase = nextPhase
	with(obj_starters_button){ instance_destroy()}
	with(obj_pokemon){visible = 0}
	displayPokemonList(400, 0, 0.5, 0.5, listToDisplay)
	visible = 0
	with(otherButton) visible = 1
}

