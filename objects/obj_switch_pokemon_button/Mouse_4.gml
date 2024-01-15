if(global.phase = PHASES.choosing and global.turn = TURNS.Amber) {
	if(!instance_exists(obj_pokemon_button)) {
		with(global.amber) {
			for(var i = 0; i < ds_list_size(pokemonCompanionList); i++) {
				var poke = pokemonCompanionList[|i]
				var button = instance_create_depth(other.x, other.y + sprite_get_height(spr_switch) + sprite_get_height(spr_item_button) + sprite_get_height(spr_bulbasaur_button) * (1 + 1.1 * i), 0, poke.button)
				button.object = poke
				if(!poke.alive) {
					button.image_alpha = 0.3
				}
			}
		}
	}

	else with(obj_pokemon_button) instance_destroy()

}

