

event_inherited()
global.Husmusen=id
roomMatch=room_husmusen
roomWorld=jansson_husmus_gym
camping=1
wait=1
defeated=0
path=0
name="Husmusen"

world_x=x; world_y=y;
rattata=instance_create_depth(opponent_x,opponent_y,0,obj_rattata)
raticate=instance_create_depth(opponent_x,opponent_y,0,obj_raticate)
marill=instance_create_depth(opponent_x,opponent_y,0,obj_marill)
pichu=instance_create_depth(opponent_x,opponent_y,0,obj_pichu)
raichu=instance_create_depth(opponent_x,opponent_y,0,obj_raichu)
sandshrew=instance_create_depth(opponent_x,opponent_y,0,obj_sandshrew)
//ds_list_add(pokemonList,sandshrew,raichu,pichu,rattata,marill,raticate)
ds_list_add(pokemonList,rattata,marill,raticate,sandshrew,raichu,pichu)
for(var i=0; i<ds_list_size(pokemonList); i++) {
var pokemon = pokemonList[|i]
with(pokemon){
x=opponent_x; y=opponent_y
owner=other.id
}
}
active_pokemon=pokemonList[|0]


scrChoosing=method(undefined,scrEnemyChoosing)
scrDefeated= method(undefined,scrEnemyDefeated)
scrWinning= method(undefined,scrEnemyWinning)
scrSwitchPokemon=method(undefined,scrEnemySwitchPokemon)
scrWorld=method(undefined,scrEnemyWorld)
scrMatch = method(undefined,scrEnemyMatch)

isAmberApproachable=function(){
var y_distance=abs(y-global.amber.y)
	var x_distance=abs(x-global.amber.x)
	with(global.amber){
	var jansson_distance=distance_to_object(global.Jansson)
var husmus_distance=distance_to_object(global.Husmusen)
	}
	
return y_distance<40 and jansson_distance>husmus_distance or instance_find(obj_jansson,0).defeated
}

getOpponent = function(){return global.amber}



