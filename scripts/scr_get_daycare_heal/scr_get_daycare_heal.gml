function scr_get_daycare_heal() {
	// returns the hp that should be healed in daycare. "proportianal to average level"
var sum_level = 0
	for(var i = 0; i < ds_list_size(pokemonList); i++){
	var pokemon = pokemonList[|i]
	sum_level+=pokemon.level
	}
	return 10*sum_level/ds_list_size(pokemonList)
}
