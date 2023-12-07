
function scrEnemyWorld() {
	if(!defeated and room == roomWorld) {
		var x_distance = abs(x - global.amber.x)
		if(isAmberApproachable()) {
			with(obj_amber){moveable = 0}
	
			if(camping) {
				move_towards_point(global.amber.x, global.amber.y, x_distance / 60)
				camping = 0
			}
		}
	}

	if(speed > 0 and y != global.amber.y) {
		speed = 0
		with(obj_amber){moveable = 1}
		camping = 1
	}
}

function scrEnemyChoosing(){
	if(!active_pokemon.active and x > -sprite_width){
		global.enemy.active_pokemon = noone
		for(var i = 0; i < ds_list_size(pokemonList); i++) {
			var pokemon = pokemonList[|i];
			if(pokemon.alive) {
				global.enemy.active_pokemon=pokemon;
				break;
			}
		}

		if(global.enemy.active_pokemon != noone) {
			global.phase = PHASES.switchPokemon
			path_start(enemy_path, 8, path_action_stop, 1)
		} else {
			global.phase = PHASES.defeated
			with(obj_pokemon){enemy_reset_attributes()}
			defeated = 1
			exit;
		}
	}

	if(active_pokemon.HP > 0 and active_pokemon.active) {
		if(!wait) {
			wait = 1
			with(active_pokemon) {
				scr_ai()
				global.phase = PHASES.statusAilment
				scr_perform_status_ailment()
			}
		}

		if(wait) {
			if(alarm[0] = -1) {
				alarm[0] = room_speed
			}
		}
	}
}



function scrEnemyWinning(){
	with(active_pokemon){active = 0}
	if(!instance_exists(obj_continue_button)) {
		instance_create_depth(room_width - 196/2, 32, 0, obj_continue_button)
		global.enemy.visible = 1
	}
}
	
	
	
function scrEnemyDefeated() {
	if(!instance_exists(obj_continue_button)) {
		instance_create_depth(room_width - 196 / 2, 32, 0, obj_continue_button)
		with(global.enemy) {visible = 1}
		with(obj_move_button){ instance_destroy()}
		with(obj_switch_pokemon_button){instance_destroy()}
		with(obj_item_button_choose){instance_destroy()}
	}
}




function scrEnemySwitchPokemon(){
	if(x < -sprite_width) {
		path_end()
		global.phase = PHASES.pokeball
		pokeball = instance_create_depth(x, y, 0, obj_poke_ball)
		pokeball.owner=id
		x = opponent_x
		visible = 0
	}
}

function scrEnemyMatch(){
	switch(global.turn){
	case TURNS.enemy:
	if(active_pokemon != noone) scrDeath()
	switch(global.phase) {
		case PHASES.choosing: scrChoosing(); break;
		case PHASES.defeated: scrDefeated(); break;
		case PHASES.switchPokemon: scrSwitchPokemon(); break;
	}; break;

	case TURNS.Amber: if(global.phase == PHASES.defeated){scrWinning()}; break;
	}
}