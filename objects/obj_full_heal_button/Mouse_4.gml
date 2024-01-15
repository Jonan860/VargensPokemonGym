var hasBeenUsed = false
for(var i = 0; i < ds_list_size(global.amber.active_pokemon.statusAilmentList); i++) {	
	var ailment = ds_list_find_value(global.amber.active_pokemon.statusAilmentList, i)
	with(ailment) {
			if(applied) {
				hasBeenUsed = true
				applied = 0
				count = 0
			}
	}
}
if(hasBeenUsed) {
	with(global.amber) {
		fullHeal.count -= 1
		active_pokemon.action_bar += active_pokemon.max_action_bar
	}
	scr_turn_decision()
	with(obj_item_buttons){instance_destroy()}
}
