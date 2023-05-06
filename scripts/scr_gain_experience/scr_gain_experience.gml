function scr_gain_experience() {
	var n=0
	with(owner){
	for(var i = 0; i < ds_list_size(pokemonList) ; i++){
	n+=pokemonList[|i].level
	}
	}
	
	experience+=power((global.enemy.active_pokemon.level),4)*n/30
	if(experience>=exp_needed){scr_level_up()}
}
