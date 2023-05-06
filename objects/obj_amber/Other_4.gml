if(isBattleRoom(room)){
global.amber.save(global.saveBeforeBattle)
world_x = x; world_y = y;
x=match_x; y=match_y
}

if(scrContains(room, room_teddy_gym, jansson_husmus_gym)){
if(world_x!=noone and world_y!=noone){x=world_x; y=world_y}
	visible=1
	moveable=1
	if(active_pokemon!=noone){active_pokemon.active=0}
	active_pokemon=noone
	for(var i = 0; i < ds_list_size(pokemonList); i++){
	with(pokemonList[|i]){ action_bar = max_action_bar}
	}
}

if(scrContains(room,room_inventory,room_shop)){visible=0}



if(scrContains(room, jansson_husmus_gym, room_skalman, room_teddy_gym)){
	active_pokemon = noone
	for(var i = 0; i < ds_list_size(pokemonList); i++){
	with(pokemonList[|i]){
	image_xscale=1; image_yscale=1
	x=match_x; y=match_y
	visible = 0
	}
	}
x=world_x; y = world_y
visible=1
}







