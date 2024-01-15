
event_inherited()
world_x = x; world_y = y
roomWorld = room_teddy_gym
roomMatch = room_teddy_match
world_sprite = spr_teddy_bed
battle_sprite = spr_teddy_battle
if(instance_number(obj_teddy) == 1) global.teddy = id
camping = 1
jigglypuff = instance_create_depth(opponent_x, opponent_y, 0, obj_jigglypuff)
drowsee = instance_create_depth(opponent_x, opponent_y, 0, obj_drowsee)
gastly = instance_create_depth(opponent_x, opponent_y, 0, obj_gastly)

ds_list_add(pokemonList, jigglypuff, drowsee, gastly)
for(var i = 0; i < ds_list_size(pokemonList); i++) {
	var pokemon = ds_list_find_value(pokemonList, i)
	with(pokemon) {
		owner = other.id
		x = opponent_x; y = opponent_y
	}
}

active_pokemon = pokemonList[|0]

path = 0
name = "Teddy"
world_x = x; world_y = y;
defeated = 0
wait = 1

scrChoosing = method(undefined, scrEnemyChoosing)
scrDefeated = method(undefined, scrEnemyDefeated)
scrWinning = method(undefined, scrEnemyWinning)
scrSwitchPokemon = method(undefined, scrEnemySwitchPokemon)
scrWorld = method(undefined, scrEnemyWorld)
scrMatch = method(undefined, scrEnemyMatch)
isAmberApproachable = function(){return y == global.amber.y}
sprDefeatBubble = spr_teddy_defeat_bubble
sprVictoryBubble = spr_teddy_victory_bubble

getOpponent = function() {return global.amber}

saveCondition = function() {return true}