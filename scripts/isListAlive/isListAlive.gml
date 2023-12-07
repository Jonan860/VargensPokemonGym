function isListAlive(listWithPokemon) {
	for(var i = 0; i < ds_list_size( listWithPokemon); i++) {
		if(listWithPokemon[|i].alive) return true
	}
	return false
}